<?php
/*
 * 常量配置
 * @author jiangzuru
 * @date 2017.04.20
 */
namespace Home\Controller;
use Think\Controller;
class SettingController extends Controller{
    public function getSettingData(){
        $Model = M('Setting');
        $root = array();
        $data = $Model->select();

        if ($data){
            $root['data'] = $data;
            $root['status'] = 1;
            $root['message'] = 'success';
            $this->ajaxReturn($root);
        }else{
            $this->ajaxReturn(['status'=>'0','message'=>'数据库连接失败']);
        }
    }

    public function save(){
        $Model = M('Setting');
        $data = I('request.');

        if (trim($data['name']) != '' && $data['value'] != ''){
            $result = $Model->save($data);
            if ($result){
                $root = array(['status'=>1,'message'=>'success']);
                $this->ajaxReturn($root);
            }else {
                $root = array(['status' => 0, 'message' => '插入数据失败']);
                $this->ajaxReturn($root);
            }
        }else{
            $root = array(['status' => 0, 'message' => '插入的数据不能为空']);
            $this->ajaxReturn($root);
        }
    }
}
