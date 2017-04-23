<template>
    <div class="sku-detail contain" v-if="skuDetail.isShow">
        <div class="skuDetail">
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
                    <el-row style="text-align: right">
                        <el-button type='primary' @click="getProfitCalc" >搜索</el-button>
                    </el-row>
                    <!--固定成本表格-->
                    <el-row style="margin: 30px auto;">
                        <el-table
                                :data="selectedFbaFee"
                                border
                                style="width: 100%"
                                max-height="500"
                                v-loading="loading1"
                                element-loading-text="拼命加载中"
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
                    </el-row>
                    <!--可变成本表格-->
                    <el-row>
                        <el-table
                                :data="profitCalc"
                                border
                                style="width: 100%"
                                max-height="500"
                                v-loading="loading2"
                                element-loading-text="拼命加载中"
                        >

                            <el-table-column
                                    prop="sale_domain"
                                    label="站点"
                                    sortable
                                    width="180">
                            </el-table-column>
                            <el-table-column
                                    label="售价"
                                    sortable
                                    prop="price"
                                    width="180">
                            </el-table-column>
                            <el-table-column
                                    label="毛利"
                                    sortable
                                    :formatter="function(row) {
                                      return row.profit_rmb+'('+row.profit+')'
                                    }"
                                    width="180">
                            </el-table-column>
                            <el-table-column
                                    label="毛利率"
                                    sortable
                                    prop="profit_rate"
                                    width="180">
                            </el-table-column>
                            <el-table-column
                                    label="投入产出比"
                                    sortable
                                    :formatter="function(row) {
                                      return '1:'+row.io_rate;
                                    }"
                                    width="180">
                            </el-table-column>

                        </el-table>

                    </el-row>

                </el-col>
            </el-row>
        </div>
    </div>
</template>

<script>
import {mapState,mapMutations} from 'vuex'
    export default {
        name: 'skuDetail',
        data () {
            return {
                isIndeterminate: true,
                checkAll: true,
                checkedCountries: [],
                countriesFee: {},
                loading1:true,
                loading2:false,
                fbaFee: [],
                fbaFeeSkuData: [],
                profitCalc:[],
//                skuData: [],
//                showDetailId: 0,
//                countries: countryOptions,
//                countriesFee: {},
//                loading1:true
            }
        },
        computed: {
            ...mapState({
                skuDetail:state=>state.manager.skuDetail,
                countries:state=>state.manager.countriesOption,
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
                'updateSkuDetail'
            ]),
            hideSkuDetail(){
                this.updateSkuDetail({skuDetail:{isShow:false}})
            },

            handleCheckAllChange(event) {
                this.checkedCountries = event.target.checked ? this.countries : [];
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
                    if(res.body.status == 1){
                        this.fbaFee = res.body.FBA_fee
                        this.fbaFeeSkuData = res.body.sku_data
                    }
                    this.loading1 = false;
                    })
            },
            getProfitCalc(){
                this.loading2 = true;
                let postData = {};
                for(let i in this.countriesFee){
                    if(this.countriesFee[i] > 0){
                        postData[i] = this.countriesFee[i]
                    }
                }
                this.$http.post(
                    '/home/skuDetail/profitCalc',
                    {
                        id:this.skuDetail.id,
                        ...postData
                    }
                )
                    .then(res=>{
                        if(res.body.status == 1){
                            this.profitCalc = res.body.data;
                        }
                        this.loading2 = false
                    })
            }
        },
        mounted(){
            this.checkedCountries = this.countries
        },
        watch:{
            skuDetail(newVal,oldVal){
                if(newVal.id != oldVal.id) this.getCalculateById(newVal.id)
            }
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
