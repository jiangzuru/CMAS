<?php
namespace Home\Controller;
use Think\Controller;
class UsersController extends Controller {
    public function login(){
        $account = I('account');
        $password = I('password');
        $res = [];
        if (!$account){
            $res = [
                'status'=>0,
                'message'=>'请输入用户名'
            ];
            $this->ajaxReturn($res);
        }
        $users = M('users');
        $user = $users->where("account='".$account."'")->find();
        if ($user['password'] == md5($password)){
            $res = [
                'status'=>1,
                'message'=>'登录成功'
            ];
            $this->setLoginStatus($user);
        }else{
            $res = [
                'status'=>0,
                'message'=>'帐号或密码错误'
            ];
        }
        $this->ajaxReturn($res);
    }

    private function setLoginStatus($userinfo){
        $_SESSION['userinfo'] = $userinfo['account'];
        cookie('userinfo_account',$userinfo['account'],600);
    }

    public function register(){
        $data = I();
        $data['password'] = md5($data['password']);
        $res = [];
        $users = M('users');
        $user = $users->where("account='".$data['account']."'")->find();
        if ($user){
            $res = [
                'status'=>0,
                'message'=>'帐号已存在'
            ];
        }else{
            $result = $users->add($data);
            if ($result){
                $res = [
                    'status'=>1,
                    'message'=>'成功'
                ];
            }else{
                $res = [
                    'status'=>0,
                    'message'=>'新增失败'
                ];
            }
        }
        $this->ajaxReturn($res);
    }

}