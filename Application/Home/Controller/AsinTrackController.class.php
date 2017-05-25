<?php
/*
 * 展示监控数据
 * @author jiangzuru
 * @date 2017.05.25
 */
namespace Home\Controller;
use Think\Controller;
class AsinTrackController extends Controller {
    public function getSpiderData(){
        $root = array(
            'status' => 0,
            'error'  => ''
        );

        $time = time();
        $time = $time - 8 * 3600 - (7 * 24 *3600);//计算7天前的时间戳

        $input = I('request.');//参数

        if (intval($input['id']) == 0){
            $root['error'] = 'id不能为空';
            $this->ajaxReturn($root);
        }
        //Asin数据
        $asinModel = M('Asin');
        $asinData  = $asinModel->where('id='.$input['id'])->find();
        $asin_arr = explode(',',$asinData['competer_asin']);//竞争对手asin
        $asin_arr[] = trim($asinData['asin']);//把自己的ASIN和竞争对手asin拼起来

        //爬取的链接数据库
        $Model = M('LinkData');

        foreach($asin_arr as $v){
            $condition = array();
            $condition['asin'] = $v;
            $condition['time'] = array('EGT',$time);

            //获取某个asin一段时间内的排名数据
            $rankData = array();
            $rankData = $Model->where($condition)->field('rank')->select();
            $temp_arr = array();
            $temp_arr['name'] = $v;
            $temp_arr['data'] = $rankData;
            $root['data']['rankData']['series'][] = $temp_arr;

            //获取某个asin一段时间内的价格数据


        }

        $map = array();
        $map['asin'] = trim($asinData['asin']);
        $map['time'] = array('EGT',$time);
//        $time_arr = $Model->where($map)->field('time')->select();
        $sql = "select FROM_UNIXTIME(v.time) from think_link_data as v where v.asin='".trim($asinData['asin'])."' and v.time>=".$time;
        $time_arr = $Model->query($sql);

        $root['data']['rankData']['legend'] = $asin_arr;
        $root['data']['rankData']['xAxis']  = $time_arr;

        $this->ajaxReturn($root);
//        var_dump($root);
//        exit();
    }
}