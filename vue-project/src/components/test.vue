<template>
  <div>
    <div id="zhexiantu1" style="width: 700px;height: 700px;"></div>
  </div>
</template>

<script>
    import echarts from 'echarts'

export default {
  name: 'test',
  data () {
    return {
    }
  },
  methods: {
    test(){
        /*let option = {
            title : {
                text: '价格走势图',
                subtext: '数据爬虫',
                x: 'center',
                align: 'right'
            },
            grid: {
                bottom: 80
            },
            toolbox: {
                feature: {
                    dataZoom: {
                        yAxisIndex: 'none'
                    },
                    restore: {},
                    saveAsImage: {}
                }
            },
            tooltip : {
                trigger: 'axis',
                axisPointer: {
                    type: 'cross',
                    animation: false,
                    label: {
                        backgroundColor: '#505765'
                    }
                }
            },
            legend: {
                data:['流量','降雨量'],
                x: 'left'
            },
            dataZoom: [
                {
                    show: true,
                    realtime: true,
                    start: 65,
                    end: 85
                },
                {
                    type: 'inside',
                    realtime: true,
                    start: 65,
                    end: 85
                }
            ],
            xAxis : [
                {
                    type : 'category',
                    boundaryGap : false,
                    axisLine: {onZero: false},
                    data : [
                    ].map(function (str) {
                        return str.replace(' ', '\n')
                    })
                }
            ],
            yAxis: [
                {
                    name: '流量(m^3/s)',
                    type: 'value',
                    max: 500
                },
                {
                    name: '降雨量(mm)',
                    nameLocation: 'start',
                    max: 5,
                    type: 'value',
                    inverse: true
                }
            ],
            series: [
                {
                    name:'流量',
                    type:'line',
                    animation: false,
                    areaStyle: {
                        normal: {}
                    },
                    lineStyle: {
                        normal: {
                            width: 1
                        }
                    },
                    markArea: {
                        silent: true,
                        data: [[{
                            xAxis: '2009/9/12\n7:00'
                        }, {
                            xAxis: '2009/9/22\n7:00'
                        }]]
                    },
                    data:[
                    ]
                },
                {
                    name:'降雨量',
                    type:'line',
                    yAxisIndex:1,
                    animation: false,
                    areaStyle: {
                        normal: {}
                    },
                    lineStyle: {
                        normal: {
                            width: 1
                        }
                    },
                    markArea: {
                        silent: true,
                        data: [[{
                            xAxis: '2009/9/10\n7:00'
                        }, {
                            xAxis: '2009/9/20\n7:00'
                        }]]
                    },
                    data: [
                    ]
                }
            ]
        };*/
        var option = {
            title: {
                text: '折线图堆叠'
            },
            tooltip: {
                trigger: 'axis'
            },
            legend: {
                data:['邮件营销','联盟广告','视频广告','直接访问','搜索引擎']
            },
            grid: {
                top:'12%',
                left: '1%',
                right: '10%',
                bottom: '10%',
                containLabel: true
            },
            toolbox: {
                feature: {
                    saveAsImage: {}
                }
            },
            dataZoom: [
                {
                    id: 'dataZoomX',
                    type: 'inside',
                    xAxisIndex: [0],
                    filterMode: 'filter',
                    show:true,
                },
                {
                    id: 'dataZoomX2',
                    type: 'slider',
                    xAxisIndex: [0],
                    filterMode: 'filter',
                    show:true,
                },
                {
                    id: 'dataZoomY',
                    type: 'slider',
                    yAxisIndex: [0],
                    filterMode: 'filter'
                }
            ],
            xAxis: {
                type: 'category',
                boundaryGap: false,
                data: ['周一','周二','周三','周四','周五','周六','周日']
            },
            yAxis: {
                type: 'value'
            },
            series: [
                {
                    name:'邮件营销',
                    type:'line',
                    stack: '总量',
                    data:[120, 132, 101, 134, 90, 230, 210]
                },
                {
                    name:'联盟广告',
                    type:'line',
                    stack: '总量',
                    data:[220, 182, 191, 234, 290, 330, 310]
                },
                {
                    name:'视频广告',
                    type:'line',
                    stack: '总量',
                    data:[150, 232, 201, 154, 190, 330, 410]
                },
                {
                    name:'直接访问',
                    type:'line',
                    stack: '总量',
                    data:[320, 332, 301, 334, 390, 330, 320]
                },
                {
                    name:'搜索引擎',
                    type:'line',
                    stack: '总量',
                    data:[820, 932, 901, 934, 1290, 1330, 1320]
                }
            ]
        };


        let zhexiantu1 = echarts.init(document.getElementById('zhexiantu1'))
        zhexiantu1.setOption(option)
    }
  },
    mounted(){
      this.test()
    }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
