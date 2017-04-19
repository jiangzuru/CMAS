<template>
    <div class="sku">
        <div class="left title">
            <h1>SKU管理</h1>
        </div>
        <div>
            <el-table
                    :data="skuData"
                    border
                    style="width: 100%"
                    max-height="500"

            >
                <el-table-column
                        prop="sku"
                        label="SKU"
                        sortable
                        width="100"
                >
                    <template scope="scope">
                        <el-button @click="showDetail(scope.row.id)" type="text" size="small">
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
                        width="100">
                </el-table-column>
                <el-table-column
                        prop="weight"
                        label="宽(cm)"
                        sortable
                        width="100">
                </el-table-column>
                <el-table-column
                        prop="height"
                        label="高(cm)"
                        sortable
                        width="100">
                </el-table-column>
                <el-table-column
                        prop="buy_price"
                        label="成本价(元)"
                        sortable
                        width="180">
                </el-table-column>
                <el-table-column
                        prop="logistics_type"
                        label="物流方式"
                        sortable
                        width="180"
                        :formatter="logisticeTypeFormatter">
                </el-table-column>
                <el-table-column
                        prop="domestic_logistics_price"
                        label="国内物流费用(元)"
                        sortable
                        width="180">
                </el-table-column>
                <el-table-column
                        prop="package_price"
                        label="包装成本(元)"
                        sortable
                        width="180">
                </el-table-column>
                <el-table-column
                        label="操作"
                        width="180">
                    <template scope="scope">
                        <el-button @click="toEditSku(scope.row.id,scope.row.sku)">编辑</el-button>
                        <el-button @click="deleteConfirm(scope.row)">删除</el-button>
                    </template>
                </el-table-column>
            </el-table>
            <div style="text-align: left">
                <el-button type="primary" @click="toEditSku(-1,0)">新增</el-button>
            </div>
        </div>
        <!-- 弹出表格-->
        <div v-if="showDetailId" class="skuDetail">
            <div class="background" @click="hideSkuDetail">

            </div>
            <el-row type="flex" justify="center" style="top: 10%;width: 80%;margin: auto;">
                <el-col :span="24" class="context">

                    <el-row>
                        <el-col :span="4">
                            <el-checkbox :indeterminate="isIndeterminate" v-model="checkAll"
                                         @change="handleCheckAllChange">全选
                            </el-checkbox>
                        </el-col>
                        <el-col :span="20">
                            <el-checkbox-group v-model="checkedCountries" @change="handleCheckedcountriesChange"
                                               style="text-align: left">
                                <el-checkbox v-for="(city ,index) in countries" :label="city" :key="index"
                                             style="margin-left: 15px">{{city}}
                                </el-checkbox>
                            </el-checkbox-group>
                        </el-col>
                    </el-row>

                    <el-row :gutter="10">
                        <el-col :span="6" v-for="(item,index) in countries" :key="index">
                            <el-input placeholder="请输入内容" v-model="countriesFee[item]">
                                <template slot="prepend">{{item}}</template>
                            </el-input>
                        </el-col>
                    </el-row>
                    <el-row>
                        <el-button>搜索</el-button>
                    </el-row>

                    <el-row>
                        <el-table
                                :data="selectedFbaFee"
                                border
                                style="width: 100%"
                                max-height="500"
                        >

                            <el-table-column
                                    prop="sale_domain"
                                    label="站点"
                                    sortable
                                    width="180">
                            </el-table-column>
                            <el-table-column
                                    label="FBA基础服务费"
                                    sortable
                                    :formatter="function(row) {
                                      return row.FBA_CNY+'('+row.price_sign+')'
                                    }"
                                    width="180">
                            </el-table-column>
                            <el-table-column
                                    label="抛率"
                                    sortable
                                    :formatter="function(row) {
                                      return fbaFeeSkuData.paolv
                                    }"
                                    width="180">
                            </el-table-column>
                            <el-table-column
                                    label="采购成本"
                                    sortable
                                    :formatter="function(row){
                                        return fbaFeeSkuData.buy_price
                                    }"
                                    width="180">
                            </el-table-column>
                            <el-table-column
                                    label="国内端运费"
                                    sortable
                                    :formatter="function (row) {
                                      return fbaFeeSkuData.domestic_logistics_price
                                    }"
                                    width="180">
                            </el-table-column>
                            <el-table-column
                                    label="FBA头程费用"
                                    sortable
                                    :formatter="function (row) {
                                      return fbaFeeSkuData.toucheng_price
                                    }"
                                    width="180">
                            </el-table-column>
                            <el-table-column
                                    label="包装成本"
                                    sortable
                                    :formatter="function (row) {
                                      return fbaFeeSkuData.package_price
                                    }"
                                    width="180">
                            </el-table-column>
                            <el-table-column
                                    label="总成本"
                                    sortable
                                    :formatter="function (row) {
                                      return row.sum+'('+row.sum_foreign+')'
                                    }"
                                    width="180">
                            </el-table-column>

                        </el-table>

                    </el-row clas style>

                </el-col>
            </el-row>
        </div>
    </div>
</template>

<script>
    import ElButton from "../../node_modules/element-ui/packages/button/src/button";
    const countryOptions = ['英国', '法国', '德国', '意大利', '西班牙', '美国', '加拿大', '墨西哥', '日本'];

    export default {
        components: {ElButton},
        name: 'sku',
        data () {
            return {
                skuData: [],
                showDetailId: 0,
                countries: countryOptions,
                isIndeterminate: true,
                checkAll: true,
                checkedCountries: countryOptions,
                countriesFee: {},
                fbaFee: [],
                fbaFeeSkuData: []
            }
        },
        computed: {
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
            getSkuData(){
                this.$http({
                    url: '/home/skuDetail/getSkuData',
                    params: {}
                })
                    .then((res) => {
                            if (res.body.status == 1) {
                                this.skuData = res.body.data
                                console.log(this.skuData)
                            } else {
                                //TODO
                            }
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
                        return 'sha?';
                        break;
                }
            },
            showDetail(id){
                this.showDetailId = id;
                this.getCalculateById(id)
            },
            hideSkuDetail(){
                this.showDetailId = 0
            },

            handleCheckAllChange(event) {
                this.checkedCountries = event.target.checked ? countryOptions : [];
                this.isIndeterminate = false;
            },
            handleCheckedcountriesChange(value) {
                let checkedCount = value.length;
                this.checkAll = checkedCount === this.countries.length;
                this.isIndeterminate = checkedCount > 0 && checkedCount < this.countries.length;
            },
            getCalculateById(id){
                this.$http({
                    url: '/home/skuDetail/calculate',
                    params: {
                        id: id
                    }
                })
                    .then((res) => {
                        this.fbaFee = res.body.FBA_fee
                        this.fbaFeeSkuData = res.body.sku_data
                    })
            },
            toEditSku(id, sku){
                this.$router.push({path: '/index/editSku/' + id + '/' + sku})
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
//                            this.$notify({
//                                title: '成功',
//                                message: '删除成功',
//                                type: 'success'
//                            });
                             this.skuData = this.skuData.filter(function (item,index) {
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
