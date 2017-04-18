<?php
/*
 * FBA基础服务费管理模块，增删改查
 * @author jiangzuru
 * @date 2017.04.05
 */
namespace Home\Controller;
use Think\Controller;
class FbaFeeController extends Controller {
    //Fba基础服务费收费细则详细页
    public function index(){
        $FbaModel = M('FbaFee');
        $data = $FbaModel->select();
        $this->assign('volist',$data);
        $this->display('index');
    }

    public function getFbafeeData(){
        $FbaModel = M('FbaFee');
        $data = $FbaModel->select();
        if($data){
            $this->ajaxReturn(['error'=>0,'message'=>'success','data'=>$data]);
        }else{
            $this->ajaxReturn(['error'=>1,'message'=>'数据库连接出错']);
        }
    }

    //进入新增细则页
    public function add(){
        $this->display('add');
    }

    //新增SKU
    public function save(){
        $data = $_REQUEST;

        //传值检查
        if (intval($_REQUEST['low_weight']) < 0 || intval($_REQUEST['high_weight']) <= 0){
            $this->error("重量不能小等于0");
        }
        if (intval($_REQUEST['low_length']) < 0 || intval($_REQUEST['high_length']) <= 0 || intval($_REQUEST['low_width']) < 0 || intval($_REQUEST['high_width']) <=0 || intval($_REQUEST['low_height']) < 0 || intval($_REQUEST['high_height']) <=0){
            $this->error("长宽高不能小等于0");
        }
        if (trim($_REQUEST['sale_domain']) == ''){
            $this->error("站点不能为空");
        }
        if (intval($_REQUEST['price']) <= 0){
            $this->error("费用不能小等于0");
        }

        $FBA_MODEL = M('FbaFee');
        if ($FBA_MODEL->create()){
            $result = $FBA_MODEL->add($data);
            if ($result){
                $this->success("新增收费细则成功","index",1);
            }else{
                $this->error("新增收费细则失败","index",0);
            }
        }
    }



    public function test(){
        $data = self::getExchangeRate("USD","CNY");
        var_dump($data);exit();
    }


}