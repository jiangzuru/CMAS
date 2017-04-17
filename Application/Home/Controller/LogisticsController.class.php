<?php
/*
 *  物流方式管理模块，增删改查
 * @author jiangzuru
 * @date 2017.04.17
 */
namespace Home\Controller;
use Think\Controller;
class LogisticsController extends Controller {
    //物流方式展示
    public function index(){
        $LogisticsModel = M('Logistics');
        $data = $LogisticsModel->select();
        $this->assign('volist',$data);
        $this->display('index');
    }

    //进入新增细则页
    public function add(){
        $LogisticsModel = M('Logistics');
        $first_class = $LogisticsModel->distinct(true)->field('first_class')->select();
        $second_class = $LogisticsModel->distinct(true)->field('second_class')->select();
        $this->assign('first_class',$first_class);
        $this->assign('second_class',$second_class);
        $this->display('add');
    }

    //新增物流方式
    public function save(){
        $data = $_REQUEST;
    }

}