<template>
    <div class="asin contain">
        <el-card>
        <div class="left title">
            <h1>Asin管理</h1>
        </div>
        <div>
            <el-row type="flex" justify="end">
                <el-col :span="6">
                <el-input type="text" v-model="searchStr" @keyup.enter.native="searchBtn"></el-input>
                </el-col>
                <el-col :span="2">
                <el-button type="primary" @click="searchBtn">搜索</el-button>
                </el-col>
            </el-row>
            <el-table
                    :data="tableShowData"
                    border
                    style="width: 100%"
                    max-height="500"

                    v-loading="loadingTable"
                    element-loading-text="拼命加载中"

            >
                <el-table-column
                        prop="name"
                        label="名称"
                        sortable
                >
                    <template scope="scope">
                        <el-button @click="showChartPage(scope.row)" type="text" size="small">
                            {{scope.row.name}}
                        </el-button>
                    </template>
                </el-table-column>
                <el-table-column
                        prop="asin"
                        label="ASIN"
                        :filters="filterAsin"
                        :filter-method="filterAsinHandle"
                        width="180">
                </el-table-column>
                <el-table-column
                        prop="nation"
                        label="站点"
                        :filters="filterNation"
                        :filter-method="filterTag"
                        width="120">
                </el-table-column>
                <el-table-column
                        prop="competer_asin"
                        label="竞争对手ASIN"
                        sortable
                        width="300">
                </el-table-column>
                <el-table-column
                        prop="competer_name"
                        label="竞争对手名字"
                        sortable
                        width="300">
                </el-table-column>
                <el-table-column
                        label="操作"
                        width="200">
                    <template scope="scope">
                        <el-button @click="toEditAsin(scope.row)">编辑</el-button>
                        <el-button @click="deleteConfirm(scope.row)">删除</el-button>
                    </template>
                </el-table-column>
            </el-table>
            <div style="text-align: left;margin-top: 30px">
                <el-button type="primary" @click="toEditAsin(false)">新增</el-button>
            </div>
        </div>

        </el-card>
        <div class="asin-chart" v-if="chartPageIsShow">
            <div class="chart-contain">
                <div class="background" @click="hideChart"></div>
                    <el-row type="flex" justify="center" style="width: 80%;margin: auto">
                    <el-col :span="24" class="context">
                        <el-tabs type="border-card">
                                 <!--@tab-click="test"-->
                            <el-tab-pane label="价格">
                                <div id="priceChart" style="width: 1200px;height: 550px;"></div>
                            </el-tab-pane>
                            <el-tab-pane label="排名" >
                                <div id="rankChart" style="width: 1200px;height: 550px;"></div></el-tab-pane>
                            <el-tab-pane label="评论/评分">
                                <div id="commentChart" style="width: 1200px;height: 550px;"></div></el-tab-pane>
                            <!--<el-tab-pane label="评分">-->
                                <!--<div id="markChart" style="width: 700px;height: 550px;"></div></el-tab-pane>-->
                        </el-tabs>

                    </el-col>
                    </el-row>
            </div>
        </div>
    </div>
</template>

<script>
    import echarts from 'echarts'
import {mapState,mapMutations} from 'vuex'
    export default {
        name: 'asin',
        data () {
            return {
                asinData: [],
                showChartPageId: 0,
                loadingTable:true,
                searchStr:'',
                tableShowData:[],
                filterAsin:[],
                filterNation:[],
                chartPageIsShow:false,
                renderData:{}
            }
        },
        computed: {
            ...mapState({

            }),
        },
        methods: {
            ...mapMutations([
                'updateEditAsinData',
            ]),
            test(){
                console.log(111)
                setTimeout(function () {
                    this.renderAllChart(this.renderData)
                }.bind(this),1000)
            },
            getAsinData(){
                this.$http({
                    url: '/home/asinManage/index',
                    params: {}
                })
                    .then((res) => {
                            if (res.body.status == 1) {
                                this.asinData = res.body.data
                                this.tableShowData = this.asinData
                                let tAsin = [],tAsinObj={},
                                    tNation=[],tNationObj={}

                                for(let i in this.asinData){

                                    if (!tAsinObj[this.asinData[i].asin]){
                                        tAsin.push({text:this.asinData[i].asin,value:this.asinData[i].asin})
                                        tAsinObj[this.asinData[i].asin] = 1
                                    }
                                    if (!tNationObj[this.asinData[i].nation]){
                                        tNation.push({text:this.asinData[i].nation,value:this.asinData[i].nation})
                                        tNationObj[this.asinData[i].nation] = 1
                                    }

                                }
                                this.filterAsin = tAsin;
                                this.filterNation = tNation

                            } else {
                                //TODO
                            }
                        this.loadingTable = false
                        }
                    )
            },
            showChartPage(row){
                let id = row.id
                this.getSpiderData(id).then(data=>{
                    if(data.body.status == 0){
                        this.renderData = data.body.data
                        this.renderAllChart(data.body.data)
                    }

                })
                this.chartPageIsShow = true
            },
            filterTag(value, row) {
                return row.nation === value;
            },
            filterAsinHandle(value, row) {
                return row.asin === value;
            },

            toEditAsin(row){
                if(row){
                    this.updateEditAsinData({asinData:row})
                }else{
                    this.updateEditAsinData()
                }
                this.$router.push({path: '/index/editAsin'})
            },
            deleteConfirm(row){

                this.$confirm('确定删除' + row.name + '?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    this.deleteAsin(row.id)
                        .then((status)=>{
                            if(status == 1){
                                this.$message({
                                    type: 'success',
                                    message: '删除成功!'
                                });
                            }
                        })
                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消删除'
                    });
                });
            },
            deleteAsin(id){

                return this.$http({
                    url: '/home/asinManage/delete',
                    params: {
                        id: id
                    }
                })
                    .then((res) => {
                        if (res.body.status == 1) {
                             this.tableShowData = this.tableShowData.filter(function (item,index) {
                                if(item.id == id) return false;
                                return true
                            })
                        } else {
                            this.$notify({
                                title: '失败',
                                message: res.body.message,
                                type: 'error'
                            });
                        }
                        return res.body.status;
                    })
            },
            searchBtn(){
                if(this.searchStr == ''){
                    return this.tableShowData = this.asinData
                }else{
                    this.tableShowData = this.asinData.filter((item,index)=>{
                        return JSON.stringify(item).toLowerCase().indexOf(this.searchStr.toLowerCase()) >= 0
                    })
                }
            },
            hideChart(){
                this.chartPageIsShow=false
            },
            getSpiderData(id){
                return this.$http({
                    url:'/home/asinTrack/getSpiderData',
                    params:{
                        id:id
                    }
                })
            },
            renderPriceChart(priceData){
                priceData.series.map(item=>item.type = 'line')
                var option = {
                    title: {
                        text: '价格图'
                    },
                    tooltip: {
                        trigger: 'axis'
                    },
                    legend: {
                        data:priceData.legend
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
                        data: priceData.xAxis
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: priceData.series
                };


                let priceChart = echarts.init(document.getElementById('priceChart'))
                priceChart.setOption(option)
            },
            renderRankChart(rankData){
                rankData.series.map(item=>item.type = 'line')
                var option = {
                    title: {
                        text: '排名折线图'
                    },
                    tooltip: {
                        trigger: 'axis'
                    },
                    legend: {
                        data:rankData.legend
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
                        data: rankData.xAxis
                    },
                    yAxis: {
                        type: 'value',
                        inverse: true
                    },
                    series: rankData.series
                };


                let rankChart = echarts.init(document.getElementById('rankChart'))
                rankChart.dispose();
                rankChart = echarts.init(document.getElementById('rankChart'))

                rankChart.setOption(option)
            },
            renderCommentChart(reviewData,starData){
                var option = {
                    title: {
                        text: '评论/评分'
                    },
                    tooltip: {
                        trigger: 'axis'
                    },
                    legend: {
                        data:reviewData.legend
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
                    ],
                    xAxis: {
                        type: 'category',
                        boundaryGap: true,
                        data: reviewData.xAxis
                    },
                    yAxis: [{
                        type: 'value',
                        name:'评论（个）'
                    },
                    {
                        type: 'value',
                        name:'评分（分）'
                    }
                    ],
                    series:[]
                };
                reviewData.series.map(item=>{
                    item.type = 'bar'
                    option.series.push(item)
                })
                starData.series.map(item=>{
                    item.type = 'line';
                    item.yAxisIndex = 1;
                    option.series.push(item)
                })


console.log(option.series);
                let commentChart = echarts.init(document.getElementById('commentChart'))
                commentChart.setOption(option)
            },
            renderMarkChart(){
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
                        left: '0%',
                        right: '10%',
                        bottom: '10%',
                        containLabel: true
                    },
                    toolbox: {
                        feature: {
                            saveAsImage: {}
                        }
                    },
//                    dataZoom: [
//                        {
//                            id: 'dataZoomX',
//                            type: 'inside',
//                            xAxisIndex: [0],
//                            filterMode: 'filter',
//                            show:true,
//                        },
//                        {
//                            id: 'dataZoomX2',
//                            type: 'slider',
//                            xAxisIndex: [0],
//                            filterMode: 'filter',
//                            show:true,
//                        },
//                        {
//                            id: 'dataZoomY',
//                            type: 'slider',
//                            yAxisIndex: [0],
//                            filterMode: 'filter'
//                        }
//                    ],
                    xAxis: {
                        type: 'category',
                        boundaryGap: true,
                        data: ['周一','周二','周三','周四','周五','周六','周日']
                    },
                    yAxis: {
                        type: 'value'
                    },
                    series: [
                        {
                            name:'邮件营销',
                            type:'bar',
//                            stack: '总量',
                            data:[120, 132, 101, 134, 90, 230, 210]
                        },
                        {
                            name:'邮件营销',
                            type:'bar',
//                            stack: '总量',
                            data:[10, 132, 101, 134, 90, 230, 210]
                        },
                        {
                            name:'联盟广告',
                            type:'bar',
//                            stack: '总量',
                            data:[220, 182, 191, 234, 290, 330, 310]
                        },
                        {
                            name:'视频广告',
                            type:'bar',
//                            stack: '总量',
                            data:[150, 232, 201, 154, 190, 330, 410]
                        },
                        {
                            name:'直接访问',
                            type:'bar',
//                            stack: '总量',
                            data:[320, 332, 301, 334, 390, 330, 320]
                        },
                        {
                            name:'搜索引擎',
                            type:'bar',
//                            stack: '总量',
                            data:[1, 2, 3, 4, 5, 6, 7]
                        }
                    ]
                };


                let markChart = echarts.init(document.getElementById('markChart'))
                markChart.setOption(option)
            },
            renderAllChart(renderData){
                this.renderPriceChart(renderData.priceData)
                this.renderRankChart(renderData.rankData)
                this.renderCommentChart(renderData.reviewData,renderData.starData)
//                this.renderMarkChart()
            }
        },
        mounted(){
            this.getAsinData();
        }
    }
</script>

<style scoped>
    .asin .title {
        font-size: 1.5em;
        margin: 20px;
    }

    .asin-chart {
        position: fixed;
        top: 0;
        left: 0;
        height: 100%;
        width: 100%;
        z-index: 100;
    }

    .asin-chart .background {
        position: absolute;
        height: 100%;
        width: 100%;
        background: rgba(0, 0, 0, 0.5);
    }

    .asin-chart .context {
        top: 10%;
        background: #fff;
        padding: 50px;
        border-radius: 5px;
    }


</style>
