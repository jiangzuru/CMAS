<?php
namespace Home\Controller;
use Think\Controller;
class IndexController extends Controller {
    public function index(){
        $this->show();
    }

    public function calc(){
        $data = $_REQUEST;
        if ($data['sku'] == ''){
            $this->error("sku不能为空");
        }


    }
}