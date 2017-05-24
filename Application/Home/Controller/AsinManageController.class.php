<?php
/*
 * ASIN码管理模块，增删改查
 * @author jiangzuru
 * @date 2017.05.23
 */
namespace Home\Controller;
use Think\Controller;
class AsinManageController extends Controller {
    public function index(){
        $root = array(
            'status' => 1,
            'error'  => 'success'
        );

        $Model = M('Asin');
        $data = $Model->select();

        if ($data){
            $root['data'] = $data;
        }else{
            $root['status'] = 0;
            $root['error'] = '获取asin列表失败';
        }

        $this->ajaxReturn($root);
    }

    //新增ASIN码
    public function save(){
        $root = array(
            'status' => 0,
            'error'  => ''
        );

        $Model = M('Asin');
        $data  = I('request.');
        if (trim($data['asin']) == ''){
            $root['error'] = 'asin不能为空';
            $this->ajaxReturn($root);
        }
        if (trim($data['nation']) == ''){
            $root['error'] = '站点不能为空';
            $this->ajaxReturn($root);
        }

        $rs = $Model->add($data);
        if ($rs){
            $root['status'] = 1;
            $root['error']  = '添加asin成功';
        }else{
            $root['status'] = 0;
            $root['error']  = '添加asin失败';
        }

        $this->ajaxReturn($root);
    }

    //编辑ASIN码
    public function update(){
        $root = array(
            'status' => 0,
            'error'  => ''
        );

        $Model = M('Asin');
        $data  = I('request.');
        if (intval($data['id']) == 0){
            $root['error'] = 'id不能为空';
            $this->ajaxReturn($root);
        }
        if (trim($data['asin']) == ''){
            $root['error'] = 'asin不能为空';
            $this->ajaxReturn($root);
        }
        if (trim($data['nation']) == ''){
            $root['error'] = '站点不能为空';
            $this->ajaxReturn($root);
        }

        $rs = $Model->where('id='.$data['id'])->save($data);
        if ($rs){
            $root['status'] = 1;
            $root['error']  = '编辑asin成功';
        }else{
            $root['status'] = 0;
            $root['error']  = '编辑asin失败';
        }

        $this->ajaxReturn($root);
    }

    //删除ASIN码
    public function delete(){
        $root = array(
            'status' => 0,
            'error'  => ''
        );

        $Model = M('Asin');
        $data  = I('request.');
        if (intval($data['id']) == 0){
            $root['error'] = 'id不能为空';
            $this->ajaxReturn($root);
        }

        $rs = $Model->where('id='.$data['id'])->delete();
        if ($rs){
            $root['status'] = 1;
            $root['error']  = '删除asin成功';
        }else{
            $root['status'] = 0;
            $root['error']  = '删除asin失败';
        }

        $this->ajaxReturn($root);
    }
}