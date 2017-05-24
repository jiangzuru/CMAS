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
                        <el-button @click="showDetail(scope.row)" type="text" size="small">
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
                        label="竞争对手"
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
    <!--<sku-detail v-if="skuDetail.isShow"></sku-detail>-->

        </el-card>
    </div>
</template>

<script>
import {mapState,mapMutations} from 'vuex'
//    import skuDetail from '@/components/skuDetail'
    export default {
        name: 'asin',
//        components:{skuDetail},
        data () {
            return {
                asinData: [],
                showDetailId: 0,
                loadingTable:true,
                searchStr:'',
                tableShowData:[],
                filterAsin:[],
                filterNation:[]
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
                                console.log(this.filterAsin)

                            } else {
                                //TODO
                            }
                        this.loadingTable = false
                        }
                    )
            },
            showDetail(row){
                row.isShow = true;
//                this.updateSkuDetail({skuDetail:row})
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

    .asinDetail {
        position: fixed;
        top: 0;
        left: 0;
        height: 100%;
        width: 100%;
        z-index: 100;
    }

    .asinDetail .background {
        position: absolute;
        height: 100%;
        width: 100%;
        background: rgba(0, 0, 0, 0.5);
    }

    .asinDetail .context {
        top: 10%;
        background: #fff;
        padding: 50px;
        border-radius: 5px;
    }
</style>
