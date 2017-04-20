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
    public function getFbafeeData(){
        $FbaModel = M('FbaFee');
        $data = $FbaModel->select();
        if($data){
            $this->ajaxReturn(['error'=>0,'message'=>'success','data'=>$data]);
        }else{
            $this->ajaxReturn(['error'=>1,'message'=>'数据库连接出错']);
        }
    }

    //新增SKU
    public function save(){
        $data = I('request.');
        //传值检查
        if (intval($data['low_weight']) < 0 || intval($data['high_weight']) <= 0){
            $this->ajaxReturn(['status'=>0,'message'=>'重量不能小等于0']);
        }
        if (intval($data['low_length']) < 0 || intval($data['high_length']) <= 0 || intval($data['low_width']) < 0 || intval($data['high_width']) <=0 || intval($_REQUEST['low_height']) < 0 || intval($_REQUEST['high_height']) <=0){
            $this->ajaxReturn(['status'=>0,'message'=>'长宽高不能小等于0']);
        }
        if (trim($data['sale_domain']) == ''){
            $this->ajaxReturn(['status'=>0,'message'=>'站点不能为空']);
        }
        if (intval($data['price']) <= 0){
            $this->ajaxReturn(['status'=>0,'message'=>'费用不能小等于0']);
        }

        $FBA_MODEL = M('FbaFee');
        if ($FBA_MODEL->create()){
            $result = $FBA_MODEL->add($data);
            if ($result){
                $this->ajaxReturn(['status'=>1,'message'=>'新增细则成功']);
            }else{
                $this->ajaxReturn(['status'=>0,'message'=>'新增细则失败']);
            }
        }
    }

    //保存编辑
    public function update(){
        $data = I('request.');
        $data['id'] = intval($data['id']);
        if ($data['id'] == 0){
            $this->ajaxReturn(['status'=>0,'message'=>'id不能为空']);
        }
        //传值检查
        if (intval($data['low_weight']) < 0 || intval($data['high_weight']) <= 0){
            $this->ajaxReturn(['status'=>0,'message'=>'重量不能小等于0']);
        }
        if (intval($data['low_length']) < 0 || intval($data['high_length']) <= 0 || intval($data['low_width']) < 0 || intval($data['high_width']) <=0 || intval($_REQUEST['low_height']) < 0 || intval($_REQUEST['high_height']) <=0){
            $this->ajaxReturn(['status'=>0,'message'=>'长宽高不能小等于0']);
        }
        if (trim($data['sale_domain']) == ''){
            $this->ajaxReturn(['status'=>0,'message'=>'站点不能为空']);
        }
        if (intval($data['price']) <= 0){
            $this->ajaxReturn(['status'=>0,'message'=>'费用不能小等于0']);
        }

        $FBA_MODEL = M('FbaFee');
        if ($FBA_MODEL->create()){
            $result = $FBA_MODEL->where('id='.$data['id'])->save($data);
            if ($result){
                $this->ajaxReturn(['status'=>1,'message'=>'保存更新成功']);
            }else{
                $this->ajaxReturn(['status'=>0,'message'=>'保存更新失败']);
            }
        }
    }

    //删除细则
    public function delete(){
        $id = I('request.id');
        $id = intval($id);
        if ($id == 0){
            $this->ajaxReturn(['status'=>0,'message'=>'id不能为空']);
        }

        $Model = M('FbaFee');
        $result = $Model->where('id='.$id)->delete();
        if ($result){
            $this->ajaxReturn(['status'=>1,'message'=>'删除成功']);
        }else{
            $this->ajaxReturn(['status'=>0,'message'=>'删除失败']);
        }
    }

}