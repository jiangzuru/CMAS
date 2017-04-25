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
    public function index(){
        //采集某页面所有的超链接
        $data = QueryList::Query('https://www.amazon.de/dp/B01IHH51D8?th=1',['link' => ['a','href']])->data;
        //打印结果
        var_dump($data);exit();
    }
}
