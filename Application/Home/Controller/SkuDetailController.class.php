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
            $this->ajaxRetuen(['status'=>0,'message'=>'重量不能小等于0']);
        }
        if (intval($sku_data['length']) <= 0 || intval($sku_data['width']) <= 0 || intval($sku_data['height']) <= 0){
            $this->ajaxRetuen(['status'=>0,'message'=>'长宽高不能小等于0']);
        }
        if (intval($sku_data['buy_price']) <= 0){
            $this->ajaxRetuen(['status'=>0,'message'=>'成本价不能小等于0']);
        }
        if (intval($sku_data['domestic_logistics_price']) < 0){
            $this->ajaxRetuen(['status'=>0,'message'=>'国内端运费不能小于0']);
        }
        if (intval($sku_data['logistics_type']) == 0){
            $this->ajaxRetuen(['status'=>0,'message'=>'物流方式不能为空']);
        }

        $SKU_MODEL = M('SkuDetail');
        if ($SKU_MODEL->create()){
            $result = $SKU_MODEL->add($data);
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
                $this->ajaxRetuen(['status'=>0,'message'=>'重量不能小等于0']);
            }
            if (intval($sku_data['length']) <= 0 || intval($sku_data['width']) <= 0 || intval($sku_data['height']) <= 0){
                $this->ajaxRetuen(['status'=>0,'message'=>'长宽高不能小等于0']);
            }
            if (intval($sku_data['buy_price']) <= 0){
                $this->ajaxRetuen(['status'=>0,'message'=>'成本价不能小等于0']);
            }
            if (intval($sku_data['domestic_logistics_price']) < 0){
                $this->ajaxRetuen(['status'=>0,'message'=>'国内端运费不能小于0']);
            }
            if (intval($sku_data['logistics_type']) == 0){
                $this->ajaxRetuen(['status'=>0,'message'=>'物流方式不能为空']);
            }
        }else{
            $Model = M('SkuDetail');
            $sku_data = $Model->where('id='.$sku_id)->find();
        }

        $data = $this->fixedCost($sku_data);
//        var_dump($data);exit();
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

    //根据长宽高和重量选择FBA基础服务费费用
    private function fbaDeliveryFee($length,$width,$height,$weight,$sale_domain){
        $Fba_Model = M('FbaFee');
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

        if ($length > 45 || $width > 34 || $height > 26 || $weight > 12000){
            $data['status'] = 0;
            $data['message'] = "该商品为大件尺寸，赞不支持计算FBA成本";
            $this->ajaxReturn($data);
        }

        if ($sale_domain){
            $condition = array();
            $condition['sale_domain'] = array('in',$sale_domain);
            $fbafee_array = $Fba_Model->where($condition)->select();
        }else{
            $fbafee_array = $Fba_Model->select();
        }

        $First_Fee  = array();
        //找出第一个符合条件的明细，即找出对应的价格。
        foreach ($fbafee_array as $k=>$v){
            $total_weight = 0;
            $total_weight = $weight + $v['package_weight'];
            if ($total_weight < $v['low_weight'] || $total_weight > $v['high_weight']){//如果重量不匹配，直接跳过
                continue;
            }
            if ($length > $v['high_length'] || $width > $v['high_width'] || $height > $v['high_height']){
                continue;
            }
            $First_Fee = $v;
            break;
        }

        $Fee_array = array();
        $i = 0;
        //使用该条件，找到其他国家的对应的FBA价格
        foreach ($fbafee_array as $k=>$v){
            if($v['low_weight'] == $First_Fee['low_weight'] && $v['high_weight'] == $First_Fee['high_weight']
                && $v['low_length'] == $First_Fee['low_length'] && $v['high_length'] == $First_Fee['high_length']){
                $Fee_array[$i]['sale_domain'] = $v['sale_domain'];
                $Fee_array[$i]['price'] = $v['price'];
                $i += 1;
            }
        }
        return $Fee_array;
    }

    //计算固定成本
    private function fixedCost($sku_data,$sale_domain=false){
//        $SKU_MODEL = M('SkuDetail');
//        $sku_data  = $SKU_MODEL->where("id=".$id)->find();

        $data = array();
        if (!$sku_data){
            $data['status'] = 0;
            $data['message'] = 'sku不存在';
            $this->ajaxReturn($data);
        }

        if ($sku_data['logistics_type'] == 1){//直邮
            $sku_data['logistics_price'] = floatval($sku_data['weight'] * 60 / 1000);//直邮的物流费用，只计算重量
        } elseif($sku_data['logistics_type'] == 2){//FBA
            $sku_data['volumn_weight'] = (floatval($sku_data['length']) * floatval($sku_data['width']) * floatval($sku_data['height'])) / 6000;
            $sku_data['paolv'] = floatval($sku_data['volumn_weight'] / $sku_data['weight'] * 1000);
            $sku_data['paolv'] = round($sku_data['paolv'],2);

            //比较体积重与实重。以大的计算
            $weight = $sku_data['volumn_weight'] > $sku_data['weight'] ? $sku_data['volumn_weight'] : $sku_data['weight'];
            $sku_data['toucheng_price'] = $weight * 40 / 1000;//FBA头程费用

            //FBA基础服务费
            $FBA_fee = self::fbaDeliveryFee($sku_data['length'],$sku_data['width'],$sku_data['height'],$sku_data['weight'],$sale_domain);

            foreach ($FBA_fee as $k => &$v){
                //获取汇率
                if ($v['sale_domain'] == '英国'){
                    $Rate = floatval(self::getExchangeRate("GBP","CNY"));
                    $v['price_sign'] = $v['price']."£";
                    //计算固定成本总价
                    $v['FBA_CNY'] = floatval($v['price'] * $Rate);
                    $v['sum'] = $sku_data['buy_price'] + $sku_data['toucheng_price'] + $sku_data['package_price'] + $v['FBA_CNY'];
                    $v['sum_foreign'] = round($v['sum'] / $Rate,2);
                    $v['sum_foreign'] .= '£';
                }else if ($v['sale_domain'] == '德国' || $v['sale_domain'] == '法国' || $v['sale_domain'] == '意大利' || $v['sale_domain'] == '西班牙'){
                    $Rate = floatval(self::getExchangeRate("EUR","CNY"));
                    $v['price_sign'] = $v['price']."€";
                    //计算固定成本总价
                    $v['FBA_CNY'] = floatval($v['price'] * $Rate);
                    $v['sum'] = $sku_data['buy_price'] + $sku_data['toucheng_price'] + $sku_data['package_price'] + $v['FBA_CNY'];
                    $v['sum_foreign'] = round($v['sum'] / $Rate,2);
                    $v['sum_foreign'] .= '€';
                }else if ($v['sale_domain'] == '美国'){
                    $Rate = floatval(self::getExchangeRate("USD","CNY"));
                    $v['price_sign'] = $v['price']."$";
                    //计算固定成本总价
                    $v['FBA_CNY'] = floatval($v['price'] * $Rate);
                    $v['sum'] = $sku_data['buy_price'] + $sku_data['toucheng_price'] + $sku_data['package_price'] + $v['FBA_CNY'];
                    $v['sum_foreign'] = round($v['sum'] / $Rate,2);
                    $v['sum_foreign'] .= '$';

                }else if ($v['sale_domain'] == '加拿大'){
                    $Rate = floatval(self::getExchangeRate("CAD","CNY"));
                    $v['price_sign'] = $v['price']."C$";
                    //计算固定成本总价
                    $v['FBA_CNY'] = floatval($v['price'] * $Rate);
                    $v['sum'] = $sku_data['buy_price'] + $sku_data['toucheng_price'] + $sku_data['package_price'] + $v['FBA_CNY'];
                    $v['sum_foreign'] = round($v['sum'] / $Rate,2);
                    $v['sum_foreign'] .= 'C$';
                }else if ($v['sale_domain'] == '墨西哥'){
                    $Rate = floatval(self::getExchangeRate("MXI","CNY"));
                    $v['price_sign'] = $v['price']."$";
                    //计算固定成本总价
                    $v['FBA_CNY'] = floatval($v['price'] * $Rate);
                    $v['sum'] = $sku_data['buy_price'] + $sku_data['toucheng_price'] + $sku_data['package_price'] + $v['FBA_CNY'];
                    $v['sum_foreign'] = round($v['sum'] / $Rate,2);
                    $v['sum_foreign'] .= '$';

                }else if ($v['sale_domain'] == '日本'){
                    $Rate = floatval(self::getExchangeRate("JPY","CNY"));
                    $v['price_sign'] = $v['price']."¥";
                    //计算固定成本总价
                    $v['FBA_CNY'] = floatval($v['price'] * $Rate);
                    $v['sum'] = $sku_data['buy_price'] + $sku_data['toucheng_price'] + $sku_data['package_price'] + $v['FBA_CNY'];
                    $v['sum_foreign'] = round($v['sum'] / $Rate,2);
                    $v['sum_foreign'] .= '¥';
                }

                //FBA基础服务费换算成人民币
                $v['FBA_CNY'] = round($v['FBA_CNY'],2);
                $v['sum']     = round($v['sum'],2);
                $v['change_rate'] = $Rate;
            }
        }

        $data['sku_data'] = $sku_data;
        $data['FBA_fee'] = $FBA_fee;
        return $data;
    }

    public function test(){
        $data = '{"a":1,"b":2,"c":3,"d":4,"e":5}';
        $changeh = json_decode($data,true);

        var_dump($changeh);
        exit();
    }

}