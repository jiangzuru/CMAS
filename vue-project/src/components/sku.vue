<template>
    <div class="sku contain">
        <el-card>
        <div class="left title">
            <h1>SKU管理</h1>
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
                        prop="sku"
                        label="SKU"
                        sortable
                >
                    <template scope="scope">
                        <el-button @click="showDetail(scope.row)" type="text" size="small">
                            {{scope.row.sku}}
                        </el-button>
                    </template>
                </el-table-column>
                <el-table-column
                        prop="weight"
                        label="重量(g)"
                        sortable
                        width="120">
                </el-table-column>
                <el-table-column
                        prop="length"
                        label="长(cm)"
                        sortable
                        width="120">
                </el-table-column>
                <el-table-column
                        prop="weight"
                        label="宽(cm)"
                        sortable
                        width="120">
                </el-table-column>
                <el-table-column
                        prop="height"
                        label="高(cm)"
                        sortable
                        width="120">
                </el-table-column>
                <el-table-column
                        prop="buy_price"
                        label="成本(元)"
                        sortable
                        width="120">
                </el-table-column>
                <!--<el-table-column-->
                        <!--prop="logistics_type"-->
                        <!--label="物流方式"-->
                        <!--sortable-->
                        <!--width="180"-->
                        <!--:formatter="logisticeTypeFormatter">-->
                <!--</el-table-column>-->
                <el-table-column
                        prop="domestic_logistics_price"
                        label="物流(元)"
                        sortable
                        width="120">
                </el-table-column>
                <el-table-column
                        prop="package_price"
                        label="包材(元)"
                        sortable
                        width="120">
                </el-table-column>
                <el-table-column
                        label="操作"
                        width="200">
                    <template scope="scope">
                        <el-button @click="toEditSku(scope.row)">编辑</el-button>
                        <el-button @click="deleteConfirm(scope.row)">删除</el-button>
                    </template>
                </el-table-column>
            </el-table>
            <div style="text-align: left;margin-top: 30px">
                <el-button type="primary" @click="toEditSku(false)">新增</el-button>
            </div>
        </div>
    <sku-detail v-if="skuDetail.isShow"></sku-detail>

        </el-card>
    </div>
</template>

<script>
import {mapState,mapMutations} from 'vuex'
    import skuDetail from '@/components/skuDetail'
    export default {
        name: 'sku',
        components:{skuDetail},
        data () {
            return {
                skuData: [],
                showDetailId: 0,
                loadingTable:true,
                searchStr:'',
                tableShowData:[]
            }
        },
        computed: {
            ...mapState({
                countries:state=>state.manager.countriesOption,
                skuDetail:state=>state.manager.skuDetail
            }),
            selectedFbaFee(){

                var a = this.checkedCountries;
                let b = this.fbaFee.filter(function (item, index) {
                    if (a.indexOf(item.sale_domain) > -1) {
                        return true
                    }
                    return false
                })
                return b;
            }
        },
        methods: {
            ...mapMutations([
                'updateEditSkuData',
                'updateSkuDetail'
            ]),
            getSkuData(){
                this.$http({
                    url: '/home/skuDetail/getSkuData',
                    params: {}
                })
                    .then((res) => {
                            if (res.body.status == 1) {
                                this.skuData = res.body.data
                                this.tableShowData = this.skuData
                            } else {
                                //TODO
                            }
                        this.loadingTable = false
                        }
                    )
            },
            logisticeTypeFormatter(row, column){
                switch (row.logistics_type) {
                    case '1':
                        return '国内直邮';
                        break;
                    case '2':
                        return 'FBA';
                        break;
                    default:
                        return '?';
                        break;
                }
            },
            showDetail(row){
                row.isShow = true;
                this.updateSkuDetail({skuDetail:row})
            },

            toEditSku(row){
                if(row){
                    this.updateEditSkuData({skuData:row})
                }else{
                    this.updateEditSkuData()
                }
                this.$router.push({path: '/index/editSku'})
            },
            deleteConfirm(row){

                this.$confirm('确定删除' + row.sku + '?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    this.deleteSku(row.id)
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
            deleteSku(id){

                return this.$http({
                    url: '/home/skuDetail/delete',
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
                    return this.tableShowData = this.skuData
                }else{
                    this.tableShowData = this.skuData.filter((item,index)=>{
                        console.log(JSON.stringify(item))
                        return JSON.stringify(item).toLowerCase().indexOf(this.searchStr.toLowerCase()) >= 0
                    })
                }


            }
        },
        mounted(){
            this.getSkuData();
        }
    }
</script>

<style scoped>
    .sku .title {
        font-size: 1.5em;
        margin: 20px;
    }

    .skuDetail {
        position: fixed;
        top: 0;
        left: 0;
        height: 100%;
        width: 100%;
        z-index: 100;
    }

    .skuDetail .background {
        position: absolute;
        height: 100%;
        width: 100%;
        background: rgba(0, 0, 0, 0.5);
    }

    .skuDetail .context {
        top: 10%;
        background: #fff;
        padding: 50px;
        border-radius: 5px;
    }
</style>
