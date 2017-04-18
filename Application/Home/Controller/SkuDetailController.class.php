<?php
/*
 * SKU管理模块，增删改查
 * @author jiangzuru
 * @date 2017.03.31
 */
namespace Home\Controller;
use Think\Controller;
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
            $this->ajaxReturn(['error'=>0,'message'=>'success','data'=>$data]);
        }else{
            $this->ajaxReturn(['error'=>1,'message'=>'数据库连接出错']);
        }

    }

    //进入新增SKU页
    public function add(){
        $this->display('Sku:add');
    }

    //进入SKU编辑页 参数：id
    public function edit(){
        $id = intval(I('request.id'));
        if ($id == 0){
            $this->error("id不能为空","index.php/Home/SkuDetail/index",0);
        }
        $SKU_MODEL = M('SkuDetail');
        $data = $SKU_MODEL->where('id='.$id)->find();
        $this->assign('data',$data);
        $this->display('Sku:edit');
    }

    //删除SKU 参数：id
    public function delete(){
        $id = intval(I('request.id'));
        if ($id == 0){
            $this->error("id不能为空");
        }
        $SKU_MODEL = M('SkuDetail');
        $SKU_MODEL->where("id=".$id)->delete();
        $this->success("删除成功","index",1);
    }

    //新增SKU
    public function save(){
        $data = $_REQUEST;
        $data['status'] = 1;
        $data['error']  = '';

        //传值检查
        if (intval($_REQUEST['weight']) <= 0){
            $this->error("重量不能小等于0");
        }
        if (intval($_REQUEST['length']) <= 0 || intval($_REQUEST['width']) <= 0 || intval($_REQUEST['height']) <= 0){
            $this->error("长宽高不能小等于0");
        }
        if (intval($_REQUEST['buy_price']) <= 0){
            $this->error("成本价不能小等于0");
        }
        if (intval($_REQUEST['domestic_logistics_price']) < 0){
            $this->error("国内端运费不能小于0");
        }

        $SKU_MODEL = M('SkuDetail');
        if ($SKU_MODEL->create()){
            $result = $SKU_MODEL->add($data);
            if ($result){
                $this->ajaxReturn($data);
            }else{
                $data['status'] = 0;
                $this->ajaxReturn($data);
            }
        }
    }

    //保存编辑的SKU数据
    public function update(){
        $data = I('request.');

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
        $SKU_MODEL->where("id=".$data['id'])->save($data);
        $this->success("保存修改成功","index",1);
    }

    //计算成本价等数据
    //input: id(sku的id),domain_arr:需要计算的站点({"英国","德国"})
    public function calculate(){
        $sku_id = intval(I('request.id'));
        if ($sku_id == 0){
            $this->error("id不能为空","index",0);
        }
        $domain_arr = I('request.domain_arr');

        $SKU_MODEL = M('SkuDetail');
        $sku_data  = $SKU_MODEL->where("id=".$sku_id)->find();

        if ($sku_data['logistics_type'] == 1){//直邮
            $sku_data['logistics_price'] = floatval($sku_data['weight'] * 60 / 1000);//直邮的物流费用，只计算重量
        } elseif($sku_data['logistics_type'] == 2){//FBA
            $sku_data['volumn_weight'] = (floatval($sku_data['length']) * floatval($sku_data['width']) * floatval($sku_data['height'])) / 6000;
            $sku_data['paolv'] = floatval($sku_data['volumn_weight'] / $sku_data['weight'] * 1000);
            $sku_data['paolv'] = round($sku_data['paolv'],2);
            //比较体积重与实重。以大的计算
            $weight = $sku_data['volumn_weight'] > $sku_data['weight'] ? $sku_data['volumn_weight'] : $sku_data['weight'];
            $sku_data['toucheng_price'] = $weight * 40 / 1000;//FBA头程费用
            $FBA_fee = self::Fba_delivery_fee($sku_data['length'],$sku_data['width'],$sku_data['height'],$sku_data['weight'],$domain_arr);

            foreach ($FBA_fee as $k => &$v){
                //获取汇率
                if ($v['sale_domain'] == '英国'){
                    $Rate  = floatval(self::getExchangeRate("GBP","CNY"));
                }else if ($v['sale_domain'] == '德国' || $v['sale_domain'] == '法国' || $v['sale_domain'] == '意大利' || $v['sale_domain'] == '西班牙'){
                    $Rate = floatval(self::getExchangeRate("EUR","CNY"));
                }

                $v['FBA_CNY'] = floatval($v['price'] * $Rate);//FBA基础服务费换算成人民币
                $v['sum'] = $sku_data['buy_price'] + $sku_data['toucheng_price'] + $sku_data['package_price'] + $v['FBA_CNY'];
                $v['sum_foreign'] = round($v['sum'] / $Rate,2);
                $v['FBA_CNY'] = round($v['FBA_CNY'],2);
            }
        }

        $this->assign('sku_data',$sku_data);
        $this->assign('FBA_fee',$FBA_fee);

        $this->display('Sku:calculate');

    }

    public function getExchangeRate($from_Currency,$to_Currency){
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
    public function getExchangeRateFromYahoo($from_Currency,$to_Currency){
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
    public function Fba_delivery_fee($length,$width,$height,$weight,$domain_arr){
        $Fba_Model = M('FbaFee');
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
            $this->error("该商品为大件尺寸，赞不支持计算FBA成本");
        }

        $condition = array();
        $condition['sale_domain'] = array('in',$domain_arr);
        $fbafee_array = $Fba_Model->select();
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

    public function test()
    {
        self::Fba_delivery_fee(44,23,10,400);
    }

}