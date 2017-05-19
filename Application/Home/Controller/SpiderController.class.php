<?php
/*
 * 爬虫模块
 * @author jiangzuru
 * @date 2017.04.25
 */
namespace Home\Controller;
use Think\Controller;
use QL\QueryList;

class SpiderController extends Controller{
    public function getChangeRate($from_Currency){
        $html = 'http://hl.anseo.cn/';
        //采集某页面所有的超链接
        $data = QueryList::Query($html,array(
            'txt' => array('#inverse:li','text')))->getData();
        //打印结果

        $pos = strpos($data[0]['txt'],$from_Currency) + 7;
        $huilv = substr($data[0]['txt'],$pos,6);
        $change_rate = floatval($huilv);
        return $change_rate;
    }

    public function getAmazonLinkData(){
        $html = 'https://www.amazon.it/dp/B01IHGWS9E';
        $rule = array(
          'price' => array('#priceblock_ourprice','text'),
          'rank'=> array('#SalesRank','text'),
          'star'=> array('.swSprite','title','-.s_chevron'),
          'review_count' => array('.crAvgStars>a','text'),
        );
        $data = QueryList::Query($html,$rule)->getData();
        $pos = strpos($data[0]['rank'],'.');
        $result['rank'] = substr($data[0]['rank'],$pos+2,10);
        $result['rank'] = intval($result['rank']);
        $result['price'] = floatval($data[0]['price']);
        $result['star'] = substr($data[0]['star'],0,3);
        $result['review_count'] = intval($data[0]['review_count']);
        var_dump($result);
        var_dump($data);
        exit();
    }



}
