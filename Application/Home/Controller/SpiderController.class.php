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

    public function spiderLinksData(){
        $Model = M('Asin');
        $asin_list = $Model->select();

        $time = time() - 8*3600;
        foreach ($asin_list as $v){
            //爬取自己的listing
            if ($v['nation'] == '意大利'){
                $html = 'https://www.amazon.it/dp/'.$v['asin'];
                self::getItalyData($v['asin'],$time);
            }
            //爬取竞争对手的listing
            if ($v['competer_asin'] != ''){
                $competer_list = $array=explode(",",$v['competer_asin']);
                foreach ($competer_list as $vv){
                    self::getItalyData($vv,$time);
                }
            }
        }
    }

    private function getItalyData($asin,$time){
        $html = 'https://www.amazon.it/dp/'.$asin;
        $rule = array(
            'sale_price' => array('#priceblock_saleprice','text'),
            'price' => array('#priceblock_ourprice','text'),
            'rank'=> array('#SalesRank','text'),
            'star'=> array('#summaryStars>a','title'),
            'review_count' => array('#summaryStars>a','text','-span'),
        );
        $data = QueryList::Query($html,$rule)->getData();

        //处理排名
        $pos = strpos($data[0]['rank'],'.');
        $result['rank'] = substr($data[0]['rank'],$pos+2,10);
        $result['rank'] = str_replace('.','',$result['rank']);
        $result['rank'] = intval($result['rank']);

        //处理价格.如果有促销价格，按促销价格计算
        if ($data[0]['sale_price'] != ''){
            $data[0]['sale_price'] = str_replace(',','.',$data[0]['sale_price']);
            preg_match_all("/(\d+)\.(\d+)/is", $data[0]['sale_price'], $arr);//获取价格的正则
            //促销价格有时会是纯文字，此时按正常价格计算
            if (floatval($arr[0][0]) == 0){
                $arr = array();
                $data[0]['price'] = str_replace(',','.',$data[0]['price']);
                preg_match_all("/(\d+)\.(\d+)/is", $data[0]['price'], $arr);
            }
        }else{
            $data[0]['price'] = str_replace(',','.',$data[0]['price']);
            preg_match_all("/(\d+)\.(\d+)/is", $data[0]['price'], $arr);//获取价格的正则
        }
        $result['low_price'] = floatval($arr[0][0]);
        if ($arr[0][1]){
            $result['high_price'] = floatval($arr[0][1]);
        }else{
            $result['high_price'] = floatval($arr[0][0]);
        }

        //处理评分
        $arr = array();
        preg_match_all("/(\d+)\.(\d+)/is",$data[0]['star'],$arr);
        $result['star'] = floatval($arr[0][0]);

        //处理评论数
        $result['review_count'] = intval($data[0]['review_count']);

        $result['time'] = $time;
        $result['asin'] = $asin;

        $Model = M('LinkData');
        $Model->add($result);
    }

    public function test(){
        $str = 'EUR 25,99 - EUR 39,99';
        preg_match_all("/(\d+)\.(\d+)/is", $str, $arr);
        var_dump($arr);exit();
    }

    public function spiderTest(){
        $html = 'https://www.amazon.it/dp/B00A7YHIQS';
        $rule = array(
            'sale_price' => array('#priceblock_saleprice','text'),
            'price' => array('#priceblock_ourprice','text'),
            'rank'=> array('#SalesRank','text'),
            'star'=> array('#summaryStars>a','title'),
            'review_count' => array('#summaryStars>a','text','-span'),
        );
        $data = QueryList::Query($html,$rule)->getData();
        //处理排名
        $pos = strpos($data[0]['rank'],'.');
        $result['rank'] = substr($data[0]['rank'],$pos+2,10);
        $result['rank'] = str_replace('.','',$result['rank']);
        $result['rank'] = intval($result['rank']);

        //处理价格
        if ($data[0]['sale_price'] != ''){
            $data[0]['sale_price'] = str_replace(',','.',$data[0]['sale_price']);
            preg_match_all("/(\d+)\.(\d+)/is", $data[0]['sale_price'], $arr);//获取价格的正则
            if (floatval($arr[0][0]) == 0){
                $arr = array();
                $data[0]['price'] = str_replace(',','.',$data[0]['price']);
                preg_match_all("/(\d+)\.(\d+)/is", $data[0]['price'], $arr);
            }
        }else{
            $data[0]['price'] = str_replace(',','.',$data[0]['price']);
            preg_match_all("/(\d+)\.(\d+)/is", $data[0]['price'], $arr);//获取价格的正则
        }
        $result['low_price'] = floatval($arr[0][0]);
        if ($arr[0][1]){
            $result['high_price'] = floatval($arr[0][1]);
        }else{
            $result['high_price'] = floatval($arr[0][0]);
        }

        //处理评分
        $arr = array();
        preg_match_all("/(\d+)\.(\d+)/is",$data[0]['star'],$arr);
        $result['star'] = floatval($arr[0][0]);

        //处理评论数
        $result['review_count'] = intval($data[0]['review_count']);
        var_dump($result);
        var_dump($data);
        exit();

        $Model = M('LinkData');
        $Model->add($result);
    }


}
