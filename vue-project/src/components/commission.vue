<template>
    <div class="commission contain">
        <el-card>
        <div class="left title">
            <h1>品类模块</h1>
        </div>

            <el-row type="flex" justify="end">
                <el-col :span="6">
                    <el-input type="text" v-model="searchStr" @keyup.enter.native="searchBtn"></el-input>
                </el-col>
                <el-col :span="2">
                    <el-button type="primary" @click="searchBtn">搜索</el-button>
                </el-col>
            </el-row>
        <div>
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
                        label="品类名"
                        sortable
                >
                </el-table-column>
                <el-table-column
                        prop="value"
                        label="佣金费率"
                        sortable
                        width="120">
                </el-table-column>
                <el-table-column
                        prop="lowest"
                        label="最低佣金"
                        sortable
                        width="120">
                </el-table-column>
                <el-table-column
                        prop="sale_domain"
                        label="站点"
                        sortable
                        width="120">
                </el-table-column>

                <el-table-column
                        label="操作"
                        width="200">
                    <template scope="scope">
                        <el-button @click="toEditcommission(scope.row)">编辑</el-button>
                        <el-button @click="deleteConfirm(scope.row)">删除</el-button>
                    </template>
                </el-table-column>
            </el-table>
            <div style="text-align: left;margin-top: 30px">
                <el-button type="primary" @click="toEditcommission(false)">新增</el-button>
            </div>
        </div>
        </el-card>
    </div>
</template>

<script>
import {mapState,mapMutations} from 'vuex'
    export default {
        name: 'commission',
        data () {
            return {
                commissionData:[],
                loadingTable:true,
                searchStr:'',
                tableShowData:[]
            }
        },
        computed: {
//            ...mapState({
//                countries:state=>state.manager.countriesOption
//            }),
        },
        methods: {
            ...mapMutations([
                'updateEditCommissionData',
            ]),
            getCommissionData(){
                this.$http({
                    url: '/home/commission/index',
                    params: {}
                })
                    .then((res) => {
                            if (res.body.status == 1) {
                                this.commissionData = res.body.data
                                this.tableShowData = this.commissionData
                            } else {
                                //TODO
                            }
                        this.loadingTable = false
                        }
                    )
            },

            toEditcommission(row){
                console.log(row)
                if(row){
                    this.updateEditCommissionData({commissionData:row})
                }else{
                    this.updateEditCommissionData()
                }
                this.$router.push({path: '/index/editcommission'})
            },
            deleteConfirm(row){

                this.$confirm('确定删除' + row.name + '?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    this.deleteCommission(row.id)
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
            deleteCommission(id){

                return this.$http({
                    url: '/home/commission/delete',
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
                    return this.tableShowData = this.commissionData
                }else{
                    this.tableShowData = this.commissionData.filter((item,index)=>{
                        return JSON.stringify(item).toLowerCase().indexOf(this.searchStr.toLowerCase()) >= 0
                    })
                }
            }
        },
        mounted(){
            this.getCommissionData();
        }
    }
</script>

<style scoped>
    .commission .title {
        font-size: 1.5em;
        margin: 20px;
    }

    .commissionDetail {
        position: fixed;
        top: 0;
        left: 0;
        height: 100%;
        width: 100%;
        z-index: 100;
    }

    .commissionDetail .background {
        position: absolute;
        height: 100%;
        width: 100%;
        background: rgba(0, 0, 0, 0.5);
    }

    .commissionDetail .context {
        top: 10%;
        background: #fff;
        padding: 50px;
        border-radius: 5px;
    }
</style>
