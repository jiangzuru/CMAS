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
        $time_arr = array();

        //取出自己的listing和竞争对手的listing数组
        foreach($asin_arr as $v){
            $condition = array();
            $condition['asin'] = $v;
            $condition['time'] = array('EGT',$time);

            //获取某个asin一段时间内的排名数据
            $linkData = array();
            $linkData = $Model->where($condition)->select();

            $sql = "select review_count,DATE_FORMAT(FROM_UNIXTIME(time),'%Y-%m-%d') as time from think_link_data where
                  time>=".$time." and asin='".$v."' group by DATE_FORMAT(FROM_UNIXTIME(time),'%d %b %Y')";
            $reviewData = $Model->query($sql);
            $review_array = array();
            $review_array['name'] = $v;
            if ($v == $asinData['asin']){
                foreach ($reviewData as $dd){
                    $root['data']['reviewData']['xAxis'][] = $dd['time'];
                }
            }
            foreach ($reviewData as $rr){
                $review_array['data'][]  = $rr['review_count'];
            }
            $root['data']['reviewData']['series'][] = $review_array;

            //临时数组初始化
            $rank_temp_arr = array();
            $rank_temp_arr['name'] = $v;

            $low_price_temp_arr = array();
            $low_price_temp_arr['name'] = $v;

            $high_price_temp_arr = array();
            $high_price_temp_arr['name'] = $v;

            //如果是自己的listing，把时间计入坐标数组;是竞争对手的就不记时间
            if ($v == $asinData['asin']){
                foreach ($linkData as $vv){
                    $rank_temp_arr['data'][] = $vv['rank'];
                    $low_price_temp_arr['data'][] = $vv['low_price'];
                    $high_price_temp_arr['data'][] = $vv['high_price'];
                    $star_temp_arr['data'][] = $vv['star'];
                    $time_arr[] = date('Y-m-d H:i',$vv['time']);
                }
            }else{
                foreach ($linkData as $vv){
                    $rank_temp_arr['data'][] = $vv['rank'];
                    $low_price_temp_arr['data'][] = $vv['low_price'];
                    $high_price_temp_arr['data'][] = $vv['high_price'];
                    $star_temp_arr['data'][] = $vv['star'];
                }
            }
            $root['data']['rankData']['series'][] = $rank_temp_arr;
            $root['data']['priceData']['series'][] = $low_price_temp_arr;
            $root['data']['priceData']['series'][] = $high_price_temp_arr;
        }

        $root['data']['reviewData']['legend'] = $asin_arr;

        $root['data']['rankData']['legend'] = $asin_arr;
        $root['data']['rankData']['xAxis']  = $time_arr;

        $root['data']['priceData']['legend'] = $asin_arr;
        $root['data']['priceData']['xAxis']  = $time_arr;

        $this->ajaxReturn($root);
    }

    public function test(){
        $time = time();
        $time = $time - 8 * 3600 - (7 * 24 *3600);//计算7天前的时间戳
        $sql = "select review_count,DATE_FORMAT(FROM_UNIXTIME(time),'%Y-%m-%d') as time from think_link_data where
                  time>=".$time." and asin='B01F6O2MXM' group by DATE_FORMAT(FROM_UNIXTIME(time),'%d %b %Y')";
        $Model = M('LinkData');
        $data = $Model->query($sql);

        var_dump($data);exit();
    }
}