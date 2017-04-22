<?php
/*
 *  物流方式管理模块，增删改查
 * @author jiangzuru
 * @date 2017.04.17
 */
namespace Home\Controller;
use Think\Controller;
class LogisticsController extends Controller {
    public function index(){
        $Logistic_MODEL = M('Logistics');
        $data = $Logistic_MODEL->select();
        if($data){
            $this->ajaxReturn(['status'=>1,'message'=>'success','data'=>$data]);
        }else{
            $this->ajaxReturn(['status'=>0,'message'=>'数据库连接出错']);
        }
    }

    public function getLogisticsData(){
        $Logistic_MODEL = M('Logistics');
        $data = $Logistic_MODEL->select();
        if($data){
            $Logistic_data = array();
            foreach ($data as $v){
                $temp_array = array();
                if ($v['rank'] == 1){
                    $temp_array['value'] = $v['id'];
                    $temp_array['label'] = $v['name'];
                    $Logistic_data[] = $temp_array;
                }elseif ($v['rank'] == 2){
                    $temp_array['value'] = $v['id'];
                    foreach ($Logistic_data as &$vv){
                        if ($vv['value'] == $v['pid']){
                            $temp_array['value'] = $v['id'];
                            $temp_array['label'] = $v['name'];
                            $vv['children'][] = $temp_array;
                        }
                    }
                }elseif($v['rank'] == 3){
                    $temp_array['value'] = $v['id'];
                    $temp_array['label'] = $v['name'];
                    foreach ($Logistic_data as &$grandfa){
                        foreach ($grandfa['children'] as &$father){
                            if ($v['pid'] == $father['value']){
                                $father['children'][] = $temp_array;
                            }
                        }
                    }
                }
            }
            $this->ajaxReturn(['status'=>1,'message'=>'success','data'=>$Logistic_data]);
        }else{
            $this->ajaxReturn(['status'=>0,'message'=>'数据库连接出错']);
        }
    }

    //新增物流方式
    public function save(){
        $information = I('request.');
        $Model = M('Logistics');
        $result = $Model->add($information);

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

        $Model = M('Logistics');
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

        $Model = M('Logistics');

        $logistic = $Model->where('id='.$id)->find();
        if ($logistic['rank'] == 1 || $logistic['rank'] == 2){
            $son_note = $Model->where("pid=".$id)->select();
            if ($son_note){
                $this->ajaxReturn(['status'=>0,'message'=>'该条目下还有未删除的子节点，无法删除']);
            }
        }

        $result = $Model->where('id=')->delete();
        if ($result){
            $this->ajaxReturn(['status'=>1,'message'=>'success']);
        }else{
            $this->ajaxReturn(['status'=>0,'message'=>'删除失败']);
        }
    }

}