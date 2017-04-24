<?php
/*
 * SKU管理模块，增删改查
 * @author jiangzuru
 * @date 2017.03.31
 */
namespace Home\Controller;
use Think\Controller;
use Think\Model;

class SkuDetailController extends Controller {
    //SKU列表页
    public function index(){
        $SKU_MODEL = M('SkuDetail');
        $data = $SKU_MODEL->select();

        $this->assign('volist',$data);
        $this->display('Sku:index');
    }

    //获取sku列表
    public function getSkuData(){
        $SKU_MODEL = M('SkuDetail');
        $data = $SKU_MODEL->select();
        if($data){
            $this->ajaxReturn(['status'=>1,'message'=>'success','data'=>$data]);
        }else{
            $this->ajaxReturn(['status'=>0,'message'=>'数据库连接出错']);
        }
    }

    //删除SKU 参数：id
    public function delete(){
        $id = intval(I('request.id'));
        if ($id == 0){
            $this->error("id不能为空");
        }
        $SKU_MODEL = M('SkuDetail');
        $result = $SKU_MODEL->where("id=".$id)->delete();
        if ($result){
            $this->ajaxReturn(['status'=>1,'message'=>'success']);
        }else{
            $this->ajaxReturn(['status'=>0,'message'=>'删除失败']);
        }
    }

    //新增SKU
    public function save(){
        $sku_data = I('request.');
        $data['status'] = 1;
        $data['message']  = 'success';

        //传值检查
        if (intval($sku_data['weight']) <= 0){
            $this->ajaxReturn(['status'=>0,'message'=>'重量不能小等于0']);
        }
        if (intval($sku_data['length']) <= 0 || intval($sku_data['width']) <= 0 || intval($sku_data['height']) <= 0){
            $this->ajaxReturn(['status'=>0,'message'=>'长宽高不能小等于0']);
        }
        if (intval($sku_data['buy_price']) <= 0){
            $this->ajaxReturn(['status'=>0,'message'=>'成本价不能小等于0']);
        }
        if (intval($sku_data['domestic_logistics_price']) < 0){
            $this->ajaxReturn(['status'=>0,'message'=>'国内端运费不能小于0']);
        }
        if (intval($sku_data['logistics_type']) == 0){
            $this->ajaxReturn(['status'=>0,'message'=>'物流方式不能为空']);
        }

        $SKU_MODEL = M('SkuDetail');
        if ($SKU_MODEL->create()){
            $result = $SKU_MODEL->add($sku_data);
            if ($result){
                $this->ajaxReturn($data);
            }else{
                $data['status'] = 0;
                $data['message'] = '新增失败';
                $this->ajaxReturn($data);
            }
        }
    }

    //保存编辑的SKU数据
    public function update(){
        $data = I('request.');
        $data['status'] = 1;
        $data['message'] = 'success';

        //传值检查
        if (intval($data['id']) == 0){
            $this->error("id不能为空");
        }
        if (intval($data['weight']) <= 0){
            $this->error("重量不能小等于0");
        }
        if (intval($data['length']) <= 0 || intval($data['width']) <= 0 || intval($data['height']) <= 0){
            $this->error("长宽高不能小等于0");
        }
        if (intval($data['buy_price']) <= 0){
            $this->error("成本价不能小等于0");
        }
        if (intval($data['domestic_logistics_price']) < 0){
            $this->error("国内端运费不能小于0");

        }


        $SKU_MODEL = M('SkuDetail');
        $res = $SKU_MODEL->where("id=".$data['id'])->save($data);
        if ($res){
            $this->ajaxReturn($data);
        }else{
            $data['status'] = 0;
            $data['message'] = '保存失败';
            $this->ajaxReturn($data);
        }
    }

    //计算成本价等数据
    //input: id(sku的id),domain_arr:需要计算的站点({"英国","德国"})
    public function calculate(){
        $sku_id = intval(I('request.id'));
        $data = array();

        if ($sku_id == 0){
            $sku_data = I('request.');

            //传值检查
            if (intval($sku_data['weight']) <= 0){
                $this->ajaxReturn(['status'=>0,'message'=>'重量不能小等于0']);
            }
            if (intval($sku_data['length']) <= 0 || intval($sku_data['width']) <= 0 || intval($sku_data['height']) <= 0){
                $this->ajaxReturn(['status'=>0,'message'=>'长宽高不能小等于0']);
            }
            if (intval($sku_data['buy_price']) <= 0){
                $this->ajaxReturn(['status'=>0,'message'=>'成本价不能小等于0']);
            }
            if (intval($sku_data['domestic_logistics_price']) < 0){
                $this->ajaxReturn(['status'=>0,'message'=>'国内端运费不能小于0']);
            }
        }else{
            $Model = M('SkuDetail');
            $sku_data = $Model->where('id='.$sku_id)->find();
        }

        $data = $this->fixedCost($sku_data);
        if ($data){
            $data['status'] = 1;
            $data['message'] = '计算成功';
        }else{
            $data['status'] = 0;
            $data['message'] = '计算失败';
        }
        $this->ajaxReturn($data);
    }

    //计算毛利、毛利率、平台佣金等费用
    public function profitCalc(){
        $data = array();
        $data['status'] = 1;
        $data['message'] = 'success';

        $sku_id = I('post.id');
        $sale_price = I('post.');
        if (intval($sku_id) == 0){
            $sku_data = I('post.sku_data');
            unset($sale_price['sku_data']);
        }else{
            $SkuModel = M('SkuDetail');
            $sku_data = $SkuModel->where('id='.$sku_id);
        }

        unset($sale_price['id']);
        $sale_domain = array_keys($sale_price);
        if (!$sale_price){
            $this->ajaxReturn(['status'=>0,'message'=>'请输入价格']);
        }

        //固定成本
        $fix_cost = $this->fixedCost($sku_data,$sale_domain);

        $i = 0;
        $profit_fee = array();
        foreach ($fix_cost['FBA_fee'] as $k=>&$v){
            $domain = $v['sale_domain'];
            $profit_fee[$i]['sale_domain'] = $v['sale_domain'];
            $profit_fee[$i]['price'] = floatval($sale_price[$domain]);//在某站点的售价

            //佣金
            $commission_rate = 0.15;
            $profit_fee[$i]['commission'] = floatval($profit_fee[$i]['price'] * $commission_rate);//佣金

            //银行提款手续费
            $withdraw_rate = 0.02;
            $profit_fee[$i]['withdraw_fee'] = floatval((1-$commission_rate)*$profit_fee[$i]['price']*$withdraw_rate);

            //退款耗损
            $refund_rate = 0.05;
            $profit_fee[$i]['refund'] = floatval($profit_fee[$i]['price']*$refund_rate);

            //毛利,毛利率
            $profit_fee[$i]['profit_rmb']  = floatval(($profit_fee[$i]['price']-$profit_fee[$i]['commission']-$profit_fee[$i]['withdraw_fee']-$profit_fee[$i]['refund'])*$v['change_rate']-$v['sum']);
            $profit_fee[$i]['profit']      = floatval($profit_fee[$i]['profit_rmb'] / $v['change_rate']);
            $profit_fee[$i]['profit_rate'] = floatval($profit_fee[$i]['profit_rmb'] /($profit_fee[$i]['price'] * $v['change_rate']));

            //投入产出比
            $profit_fee[$i]['io_rate'] = floatval($profit_fee[$i]['profit_rmb'] / ($v['sum'] - $v['FBA_CNY']));

            //取小数点后两位
            $profit_fee[$i]['profit_rmb']   = round($profit_fee[$i]['profit_rmb'],2);
            $profit_fee[$i]['profit']       = round($profit_fee[$i]['profit'],2);
            $profit_fee[$i]['profit_rate']  = (round($profit_fee[$i]['profit_rate'],4)*100)."%";
            $profit_fee[$i]['io_rate']      = round($profit_fee[$i]['io_rate'],2);

            //根据站点计算外币价格及添加货币符号
            if ($domain == '英国'){
                $profit_fee[$i]['price'] .= "£";
                $profit_fee[$i]['profit'] .= "£";
            }elseif ($domain == '德国' || $domain == '法国' || $domain == '意大利' || $domain == '西班牙'){
                $profit_fee[$i]['price'] .= "€";
                $profit_fee[$i]['profit'] .= "€";
            }elseif ($domain == '美国'){
                $profit_fee[$i]['price'] .= "$";
                $profit_fee[$i]['profit'] .= "$";
            }elseif ($domain == '加拿大'){
                $profit_fee[$i]['price'] .= "C$";
                $profit_fee[$i]['profit'] .= "C$";
            }elseif ($domain == '日本'){
                $profit_fee[$i]['price'] .= "¥";
                $profit_fee[$i]['profit'] .= "¥";
            }elseif ($domain == '墨西哥'){
                $profit_fee[$i]['price'] .= "$";
                $profit_fee[$i]['profit'] .= "$";
            }

            $i++;
        }
        $data['data'] = $profit_fee;
        $this->ajaxReturn($data);
    }

    //获取汇率，如果数据库中有当日汇率，则取出。没有的话，使用yahoo提供的接口。
    private function getExchangeRate($from_Currency,$to_Currency){
        $date = date('Y-m-d');//获取今日日期

        //取出今日保存的汇率;
        $condition = array();
        $condition['date'] = $date;
        $condition['from_Currency'] = $from_Currency;
        $condition['to_Currency']   = $to_Currency;
        $ChangeModel = M('Change_rate');
        $data = $ChangeModel->where($condition)->find();

        //如果数据库有，返回汇率;如果没有，调用雅虎接口搜索，并插入数据库，返回汇率;
        if ($data){
            return $data['change_rate'];
        }else{
            $data = array();
            $data['change_rate'] = $this->getExchangeRateFromYahoo($from_Currency,$to_Currency);
            if ($data <= 0){
                $this->error('获取汇率失败，请重试');
            }else{
                $data['date'] = $date;
                $data['from_Currency'] = $from_Currency;
                $data['to_Currency'] = $to_Currency;
                $ChangeModel->add($data);
                return $data['change_rate'];
            }
        }
    }

    //获取实时汇率，数据由雅虎提供. 例：欧元,人民币 = 7.x
    private function getExchangeRateFromYahoo($from_Currency,$to_Currency){
        //URL编码
        $from_Currency = urlencode($from_Currency);
        $to_Currency = urlencode($to_Currency);
        //雅虎汇率接口
        $url = "http://download.finance.yahoo.com/d/quotes.csv?e=.csv&f=sl1d1t1&s=".$from_Currency.$to_Currency."=x";
        $ch = curl_init();
        $timeout = 0;
        curl_setopt ($ch, CURLOPT_URL, $url);
        curl_setopt ($ch, CURLOPT_RETURNTRANSFER, 1);
        curl_setopt($ch,  CURLOPT_USERAGENT ,
            "Mozilla/4.0 (compatible; MSIE 8.0; Windows NT 6.1)");
        curl_setopt ($ch, CURLOPT_CONNECTTIMEOUT, $timeout);
        $rawdata = curl_exec($ch);
        curl_close($ch);
        $data = explode(',', $rawdata);
        //返回汇率金额
        return $data[1];
    }

//        public function getExchangeRateFromYahoo2(){
//        header("Content-type: text/html; charset=utf-8");
//        $file = fopen('http://download.finance.yahoo.com/d/quotes.csv?e=.csv&f=sl1d1t1&s=EURCNY=x','r');	//参数s=EURCNY, 欧元换人民币, 根据需要更换
//        while ($data = fgetcsv($file))      //读取CSV文件里的每一行内容
//        {
//            $goods_list[] = $data;
//        }
//        $shijian = $goods_list[0][2] .' '. $goods_list[0][3];  	//根据 quotes.csv文件得到的数据, 当前时间 在3,4列位置
//        $huilv = $goods_list[0][1];         					//根据 quotes.csv文件得到的数据, 汇率 在2列位置
//        echo "当前时间: $shijian, 1欧元可换: $huilv 元人民币<BR>";
//        fclose($file);
//    }

    //根据长宽高和重量选择海外仓基础服务费费用
    private function overseaDeliveryFee($length,$width,$height,$weight,$sale_domain){
        $overseaModel = M('overseaFee');
        $data = array();

        //将三个体积参数排序，按从大到小作为长宽高
        $arr = array($length,$width,$height);
        for ($m = 0; $m < 3; $m++){
            for ($n = 0; $n < $m; $n++){
                //如果后面的数大于前面的数，则交换位置，
                if ($arr[$m] > $arr[$n]){
                    $arr[$m] = $arr[$m] + $arr[$n];
                    $arr[$n] = $arr[$m] - $arr[$n];
                    $arr[$m] = $arr[$m] - $arr[$n];
                }
            }
        }

        $length = $arr[0];
        $width  = $arr[1];
        $height = $arr[2];

        if ($sale_domain){
            $condition = array();
            $condition['sale_domain'] = $sale_domain;
            $overseafee_array = $overseaModel->where($condition)->select();
        }

        if (!$overseafee_array){
            return 0;
        }

        $oversea_Fee  = array();
        //找出第一个符合条件的明细，即找出对应的价格。
        foreach ($overseafee_array as $k=>$v){
            $total_weight = 0;
            $total_weight = $weight + $v['package_weight'];
            if ($total_weight < $v['low_weight'] || $total_weight > $v['high_weight']){//如果重量不匹配，直接跳过
                continue;
            }
            if ($length > $v['high_length'] || $width > $v['high_width'] || $height > $v['high_height']){
                continue;
            }
            $temp_Fee = array();
            $temp_Fee['type_name'] = $v['type_name'];
            $temp_Fee['price'] = $v['price'];
            array_push($oversea_Fee,$temp_Fee);
        }

        return $oversea_Fee;
    }

    //计算固定成本
    private function fixedCost($sku_data){
//        $SKU_MODEL = M('SkuDetail');
//        $sku_data  = $SKU_MODEL->where("id=".$id)->find();

        $data = array();
        if (!$sku_data){
            $data['status'] = 0;
            $data['message'] = 'sku不存在';
            $this->ajaxReturn($data);
        }

        //一些配置系数,包括默认体积重系数,退款耗损率等
        $settingModel = M('setting');
        $volume_number = intval($settingModel->where("name='体积重系数'")->getField('value'));//体积重系数

        $sku_data['volumn_weight'] = (floatval($sku_data['length']) * floatval($sku_data['width']) * floatval($sku_data['height'])) / $volume_number;
        $sku_data['paolv'] = floatval($sku_data['volumn_weight'] / $sku_data['weight'] * 1000);//计算抛率
        $sku_data['paolv'] = round($sku_data['paolv'],2);
        $sku_data['refund_rate'] = floatval($settingModel->where("name='退款率'")->getField('value'));//退款率

        //取出站点数据
        $nationModel = M('nation');
        $nation_data = $nationModel->select();

        $commissionModel = M('commission');
        $logisticsModel  = M('logistics');

        $map = array();
        $map['name'] = $sku_data['sort_name'];
        foreach ($nation_data as &$nation){
            $nation['exchange_rate'] = self::getExchangeRate($nation['exchange_name'],'CNY');//查汇率
            $map['sale_domain'] = $nation['name'];
            //该sku在某站点的佣金数据
//            $commission_data = $commissionModel->where($map)->field('value,lowest')->find();
            $commission_data['value'] = 0.15;//临时数据
            $commission_data['lowest'] = 0.5;//临时数据

            $nation['commission_rate'] = floatval($commission_data['value']);
            $nation['commission_lowest'] = floatval($commission_data['lowest']);
        }

        $result_array = array();
        //每个站点的不同物流方式价格
        foreach ($nation_data as $nation){
            $temp_array = array();
            $temp_array = $nation;

            //查找合适的物流方式
            $map = array();
            $map['destination'] = $nation['name'];
            $map['rank'] = 3;
            $map['special_type'] = array('like',"%".$sku_data['special_type']."%");
            $logistics_data = array();
            $logistics_data = $logisticsModel->where($map)->select();

            if($logistics_data){
                foreach ($logistics_data as $v){
                    $temp_array['logistics_name'] = $v['name'];//物流方式名称
                    if ($v['is_oversea'] == 0){//直邮费用
                        $temp_array['logistics_price'] = floatval($logistics_data['price'] * $sku_data['weight']);//直邮费用
                        array_push($result_array,$temp_array);
                    }else{//海外仓费用
                        $oversea_data = array();//海外仓数据
                        $oversea_data['volunme_weight'] = (floatval($sku_data['length']) * floatval($sku_data['width']) * floatval($sku_data['height']))/$logistics_data['volume_number'];
                        $weight = $oversea_data['volume_weight'] > $sku_data['weight'] ? $oversea_data['volume_weight'] : $sku_data['weight'];
                        $temp_array['logistics_price'] = $weight * $logistics_data['price'] / 1000;//海外仓头程费用

                        //海外仓服务费
                        $oversea_fee = self::overseaDeliveryFee($sku_data['length'],$sku_data['width'],$sku_data['height'],$sku_data['weight'],$nation['name']);
                        foreach ($oversea_fee as $kk=>$vv){
                            $temp_array['oversea_name'] = $vv['type_name'];
                            $temp_array['oversea_fee']  = $vv['price'];
                            array_push($result_array,$temp_array);
                        }
                    }
                }
            }

        }
//        var_dump($result_array);
//        exit();
        $result['sku_data'] = $sku_data;
        return $result_array;
    }

    public function test(){
        $Model = M('SkuDetail');
        $sku_data = $Model->where('id=19')->find();
        self::fixedCost($sku_data);



    }



}