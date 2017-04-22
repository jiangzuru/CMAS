<?php
/*
 *  物流方式管理模块，增删改查
 * @author jiangzuru
 * @date 2017.04.17
 */
namespace Home\Controller;
use Think\Controller;
class CommissionController extends Controller {
    public function index(){
        $Logistic_MODEL = M('Commission');
        $data = $Logistic_MODEL->select();
        if($data){
            $this->ajaxReturn(['status'=>1,'message'=>'success','data'=>$data]);
        }else{
            $this->ajaxReturn(['status'=>0,'message'=>'数据库连接出错']);
        }
    }

    //新增物流方式
    public function save(){
        $information = I('request.');

        if ($information['name'] == ''){
            $this->ajaxReturn(['status'=>0,'message'=>'品类名称不能为空']);
        }

        if (floatval($information['value']) <= 0 || floatval($information['value']) >= 1){
            $this->ajaxReturn(['status'=>0,'message'=>'费率需在0~1之间']);
        }

        $Model = M('Commission');
        $result = $Model->save($information);
        if ($result){
            $this->ajaxReturn(['status'=>1,'message'=>'success']);
        }else{
            $this->ajaxReturn(['status'=>0,'message'=>'保存失败']);
        }
    }

    //保存修改
    public function update(){
        $information = I('request.');

        if (intval($information['id']) == 0){
            $this->ajaxReturn(['status'=>0,'message'=>'id不能为空']);
        }

        if ($information['name'] == ''){
            $this->ajaxReturn(['status'=>0,'message'=>'品类名称不能为空']);
        }

        if (floatval($information['value']) <= 0 || floatval($information['value']) >= 1){
            $this->ajaxReturn(['status'=>0,'message'=>'费率需在0~1之间']);
        }

        $Model = M('Commission');
        $result = $Model->where('id='.$information['id'])->save($information);
        if ($result){
            $this->ajaxReturn(['status'=>1,'message'=>'success']);
        }else{
            $this->ajaxReturn(['status'=>0,'message'=>'保存失败']);
        }
    }

    public function delete(){
        $id = I('request.id');
        if (intval($id) == 0){
            $this->ajaxReturn(['status'=>0,'message'=>'id不能为空']);
        }
        $Model = M('Commission');

        $result = $Model->where('id=')->delete();
        if ($result){
            $this->ajaxReturn(['status'=>1,'message'=>'success']);
        }else{
            $this->ajaxReturn(['status'=>0,'message'=>'删除失败']);
        }
    }

}