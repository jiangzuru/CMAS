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
}
