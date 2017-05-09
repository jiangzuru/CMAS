<template>
    <div class="sku-detail contain" v-if="skuDetail.isShow">
        <div class="skuDetail">
            <div class="background" @click="hideSkuDetail">

            </div>
            <el-row type="flex" justify="center" class="detail-contain" style="width: 80%;margin: auto;">
                <el-col :span="24" class="context">
                    <el-row style="text-align: left;">{{skuDetail.sku}}</el-row>
                    <el-row>
                        <el-form label-position="left" label-width="60px" >
                            <el-form-item label="站点">
                                <el-row>
                                <el-col :span="20">
                                    <el-checkbox-group v-model="checkedCountries" @change="handleCheckedcountriesChange"
                                                       style="text-align: left">
                                        <el-checkbox v-for="(city ,index) in countries" :label="city" :key="index"
                                                     style="margin-left: 15px">{{city}}
                                        </el-checkbox>
                                    </el-checkbox-group>
                                </el-col>
                                    <el-col :span="4">
                                        <el-checkbox :indeterminate="isIndeterminate" v-model="checkAll"
                                                     @change="handleCheckAllChange">全选
                                        </el-checkbox>
                                    </el-col>
                            </el-row>
                            </el-form-item>
                            <el-form-item label="物流" class="left">
                                <el-cascader
                                    :options="logisticOption"
                                    expand-trigger="hover"
                                    @change="changeFeaHandle"
                                    v-model="logisticSelect"
                                    clearable
                            >

                                    <!--v-model="logistics_type"-->
                            </el-cascader>
                            </el-form-item>
                            <el-form-item label="海外仓" class="left">
                                <el-select v-model="overseaSelect" clearable>
                                    <el-option v-for="(item,index) in overseaList" :key="index"
                                        :label="item.value"
                                       :value="item.value"
                                    >

                                    </el-option>
                                </el-select>
                            </el-form-item>
                        </el-form>
                    </el-row>

                    <el-row>
                        <el-col class="left">
                            固定成本：采购：{{fixedCostData.buy_price}}￥;物流：{{fixedCostData.domestic_logistics_price}}￥;包材：{{fixedCostData.package_price}}￥;抛率：{{fixedCostData.paolv}}
                        </el-col>
                    </el-row>

                    <el-row style="margin: 20px auto 5px auto;" :gutter="10">
                        <el-col :span="6"><el-input v-model.lazy="expectPrice">
                            <template slot="prepend">期望售价:</template>
                        </el-input></el-col>
                        <el-col :span="6"><el-input v-model.lazy="expectProfit">
                            <template slot="prepend">期望毛利:</template></el-input></el-col>
                        <el-col :span="6"><el-input v-model.lazy="expectProfitMargin">
                            <template slot="prepend">期望毛利率:</template></el-input></el-col>
                        <el-col :span="6"><el-input v-model.lazy="expectUtilizationRatio">
                            <template slot="prepend">期望资金利用率:</template></el-input></el-col>
                    </el-row>
                    <!--可变成本表格-->
                    <el-row>
                        <el-table
                                :data="feeDataSelect"
                                border
                                style="width: 100%"
                                max-height="500"
                                v-loading="loading2"
                                element-loading-text="拼命加载中"
                                @sort-change="sortChangeHandle"
                        >

                            <el-table-column
                                    prop="name"
                                    label="站点"
                                    width="100">
                            </el-table-column>
                            <el-table-column
                                    label="物流方式"
                                    prop="logistics_name"
                                    min-width="200"
                            >
                            </el-table-column>
                            <el-table-column
                                    label="总成本"
                                    sortable
                                    prop="totalCost"
                                    :formatter="formatterTotalCost"
                                    width="100">
                            </el-table-column>
                            <el-table-column
                                    label="物流成本"
                                    sortable
                                    prop="logistics_price"
                                    width="120">
                            </el-table-column>

                            <!--:sort-method="sortHandle_logistics_price"-->
                            <el-table-column
                                    label="海外仓"
                                    prop="oversea_name"
                                    width="100">
                            </el-table-column>
                            <el-table-column
                                    label="海外仓费用"
                                    prop="oversea_fee"
                                    width="120"
                                    :formatter="function (row) {
                                        if (row.oversea_fee){
                                            return row.oversea_fee + row.dollar_logo
                                        }
                                      return ''
                                    }"
                            >
                            </el-table-column>
                            <el-table-column
                                    label="售价"
                                    prop="price"
                                    sortable
                                    width="100"
                                    :formatter="formatterprice">

                            </el-table-column>
                            <el-table-column
                                    label="毛利"
                                    sortable
                                    width="180"
                                    prop="profit"
                                    :formatter="formatterProfit">
                            </el-table-column>
                            <el-table-column
                                    label="毛利率"
                                    sortable
                                    prop="profitMargin"
                                    width="100"
                                    :formatter="formatterProfitMargin">
                            </el-table-column>
                            <el-table-column
                                    label="资金利用率"
                                    sortable
                                    prop="utilizationRatio"
                                    width="140"
                                    :formatter="formatterUtilizationRatio">
                            </el-table-column>
                            <el-table-column
                                    label="退款耗损"
                                    sortable
                                    prop="refounLoss"
                                    :formatter="formatterRefounLoss"
                                    width="120">
                            </el-table-column>
                            <el-table-column
                                    label="提现费"
                                    sortable
                                    prop="withdrawals"
                                    :formatter="formatterWithdrawals"
                                    width="100">
                            </el-table-column>
                            <el-table-column
                                    label="佣金"
                                    sortable
                                    prop="commission"
                                    :formatter="formatterCommission"
                                    width="100">
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
                logisticOption:[],
                fixedCostData:{},
                feeData:[],
                feeDataSelect:[],
                calculation:{},
                expectPrice:'',
                expectProfit:'',
                expectProfitMargin:'',
                expectUtilizationRatio:'',
                overseaList:[],
                overseaSelect:'',
                logisticSelect:[],
            }
        },
        computed: {
            ...mapState({
                skuDetail:state=>state.manager.skuDetail,
                countries:state=>state.manager.countriesOption,
            }),
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
            getCalculateByIdOrParam(param){
                this.$http({
                    url: '/home/skuDetail/calculate',
                    params: {
                        ...param
                    }
                })
                    .then((res) => {
                    if(res.body.status == 1){
                        this.fixedCostData = res.body.sku_data
                        let data = res.body.data;
                        this.feeData = data;
                        this.feeDataSelect = data
                        let filterArr = [];
                        for (let i in data){
                            this.calculation[data[i].id] = {};
                            if (data[i].hasOwnProperty('oversea_name') ){
                                if(filterArr.indexOf(data[i].oversea_name) <0 ){
                                    filterArr.push(data[i].oversea_name)
                                    this.overseaList.push({value:data[i].oversea_name})
                                }
                            }

                        }
                    }
                    this.loading1 = false;
                    }).then(()=>{
                    this.expectProfit = 0
                })
            },
            getLogisticsData(){
                this.$http({
                    url:'/home/logistics/getLogisticsData'
                }).then(res=>{
                    if(res.body.status == 1){
                        this.logisticOption = res.body.data


                    }
                })
            },
            sortChangeHandle(a){
                let prop = a.prop,
                order = a.order;
                this.feeDataSelect.sort((a,b)=>{
                    if(order == 'descending')
                        return this.calculation[a.id][prop]>this.calculation[b.id][prop];
                    return this.calculation[a.id][prop]<this.calculation[b.id][prop];
                })
            },
            formatterprice(row){
                    if(this.calculation[row.id].hasOwnProperty('price')){
                        let dollarLogo = '';
                        let exchangeRate;
                        for (let i in this.feeData){
                            if(this.feeData[i].id == row.id){
                                dollarLogo = this.feeData[i].dollar_logo;
                                exchangeRate = parseFloat(this.feeData[i].exchange_rate);
                                break;
                            }
                        }


                        return ((parseFloat(this.calculation[row.id].price)/exchangeRate).toFixed(2))+dollarLogo;
                    }
                    return ''
            },
            formatterProfit(row){
                if(this.calculation[row.id].hasOwnProperty('price')){

                    let dollarLogo = '';
                    let exchangeRate;
                    for (let i in this.feeData){
                        if(this.feeData[i].id == row.id){
                            dollarLogo = this.feeData[i].dollar_logo;
                            exchangeRate = parseFloat(this.feeData[i].exchange_rate);
                            break;
                        }
                    }

                    return (this.calculation[row.id].profit.toFixed(2))+'('+((this.calculation[row.id].profit/exchangeRate).toFixed(2))+dollarLogo+')'
                }
                return ''

            },
            formatterProfitMargin(row){
                if(this.calculation[row.id].hasOwnProperty('price')){
                    return ((this.calculation[row.id].profitMargin*100).toFixed(2)) + '%'
                }
                return ''
            },
            formatterUtilizationRatio(row){
                if(this.calculation[row.id].hasOwnProperty('price')){
                    return '1/'+(parseFloat(this.calculation[row.id].utilizationRatio.toFixed(2)))
                }
                return ''
            },
            formatterRefounLoss(row) {
                if (this.calculation[row.id].hasOwnProperty('price'))
                    return this.calculation[row.id].refounLoss.toFixed(2)
                return ''
            },
            formatterWithdrawals(row) {
                if (this.calculation[row.id].hasOwnProperty('price'))
                    return this.calculation[row.id].withdrawals.toFixed(2)
                return ''
            },
            formatterCommission(row) {
                if (this.calculation[row.id].hasOwnProperty('price'))
                    return this.calculation[row.id].commission.toFixed(2)
                return ''
            },
            formatterTotalCost(row) {
                if (this.calculation[row.id].hasOwnProperty('price'))
                    return this.calculation[row.id].totalCost.toFixed(2)
                return ''
            },
            changeFeaHandle(v){
                let feaId = v[2]
                if (feaId){
                 let temp = this.feeData.filter(item=>{
                     return item.logistics_id == feaId
                 })
                this.feeDataSelect = temp;
                }
            },
            tableDataFilter(){
                let a = this.checkedCountries
                let temp = this.feeData.filter(item=>{
                    if (a.indexOf(item.name) > -1) {
                        return true
                    }
                    return false
                })

                let b = this.logisticSelect
                if(b[2]){
                    temp = temp.filter(item=>{
                        return item.logistics_id == b[2]
                    })
                }

                let c = this.overseaSelect
                if (c){
                    temp = temp.filter(item=>{
                        return item.oversea_name == c
                    })
                }

                this.feeDataSelect = temp
            },
            resetInitData(){

            }

        },
        mounted(){
            this.checkedCountries = this.countries
            this.getLogisticsData();
            this.getCalculateByIdOrParam(this.skuDetail)
        },
        watch:{
            skuDetail(newVal,oldVal){
                if(newVal.id != oldVal.id || newVal.id == '0'){
                    this.getCalculateByIdOrParam(newVal);return
                }
//                if(newVal.isShow){
//                    this.getCalculateByIdOrParam();
//                }
            },
            expectPrice(v){
                if(v == '') return
                this.expectProfit = ''
                this.expectProfitMargin = ''
                this.expectUtilizationRatio = ''
                let temp = {}
                for (let i in this.calculation){
                    let a = this.feeData.filter(item=>{
                        return item.id == i
                    })
                    let newVal = parseFloat(a[0].exchange_rate ) * v

                    temp[i] = {}
                    temp[i].price = newVal;
                    temp[i].refounLoss = this.fixedCostData.refund_rate * newVal;
                    temp[i].commission = (function () {
                        let commission_rate = a[0].commission_rate;
                        let commission_lowest = a[0].commission_lowest;
                        return commission_rate*newVal > commission_lowest ? commission_rate*newVal : commission_lowest
                    })()



                    temp[i].withdrawals = (temp[i].price -temp[i].commission)* this.fixedCostData.withdraw_rate ;
                    temp[i].totalCost = parseFloat(this.fixedCostData.buy_price) +parseFloat(this.fixedCostData.package_price)
                        +parseFloat(this.fixedCostData.domestic_logistics_price) +parseFloat(a[0].logistics_price)+
                        (parseFloat(a[0].oversea_fee_rmb)?parseFloat(a[0].oversea_fee_rmb):0)+
                        temp[i].commission + temp[i].refounLoss+temp[i].withdrawals;


                    temp[i].profit = temp[i].price - temp[i].totalCost;





                    temp[i].debug = (temp[i].price -

                    (parseFloat(this.fixedCostData.buy_price) +parseFloat(this.fixedCostData.package_price)
                    +parseFloat(this.fixedCostData.domestic_logistics_price) +parseFloat(a[0].logistics_price)+
                    (parseFloat(a[0].oversea_fee_rmb)?parseFloat(a[0].oversea_fee_rmb):0)+
                    temp[i].commission + temp[i].refounLoss+temp[i].withdrawals)+



                        parseFloat(this.fixedCostData.buy_price) +parseFloat(this.fixedCostData.package_price)
                        +parseFloat(this.fixedCostData.domestic_logistics_price) +parseFloat(a[0].logistics_price)+
                        (parseFloat(a[0].oversea_fee_rmb)?parseFloat(a[0].oversea_fee_rmb):0))
                        /(1-parseFloat(this.fixedCostData.refund_rate)-(1-parseFloat(a[0].commission_rate))*this.fixedCostData.withdraw_rate-parseFloat(a[0].commission_rate));

//                    temp[i].test1 = parseFloat(this.fixedCostData.buy_price) +parseFloat(this.fixedCostData.package_price)
//                        +parseFloat(this.fixedCostData.domestic_logistics_price) +parseFloat(a[0].logistics_price)+
//                        (parseFloat(a[0].oversea_fee_rmb)?parseFloat(a[0].oversea_fee_rmb):0)
//                    temp[i].test2 = parseFloat(this.fixedCostData.buy_price) +parseFloat(this.fixedCostData.package_price)
//                        +parseFloat(this.fixedCostData.domestic_logistics_price) +parseFloat(a[0].logistics_price)




                    temp[i].profitMargin = temp[i].profit / temp[i].price;
                    temp[i].utilizationRatio = (temp[i].profit)/(parseFloat(this.fixedCostData.buy_price) +parseFloat(this.fixedCostData.package_price)
                        +parseFloat(this.fixedCostData.domestic_logistics_price) +parseFloat(a[0].logistics_price));

                }
                this.calculation = temp;

            },
            expectProfit(v){
                if(v === '') return
                this.expectPrice = ''
                this.expectProfitMargin = ''
                this.expectUtilizationRatio = ''
                let temp = {}
                for (let i in this.calculation){
                    let a = this.feeData.filter(item=>{

                        return item.id == i
                    })
                    temp[i] = {}
                    temp[i].profit = parseFloat(v)
                    temp[i].price = (parseFloat(v)+ parseFloat(this.fixedCostData.buy_price) +parseFloat(this.fixedCostData.package_price)
                        +parseFloat(this.fixedCostData.domestic_logistics_price) +parseFloat(a[0].logistics_price)+
                        (parseFloat(a[0].oversea_fee_rmb)?parseFloat(a[0].oversea_fee_rmb):0))
                        /(1-parseFloat(this.fixedCostData.refund_rate)-(1-parseFloat(a[0].commission_rate))*this.fixedCostData.withdraw_rate-parseFloat(a[0].commission_rate));


                    temp[i].refounLoss = this.fixedCostData.refund_rate * temp[i].price;
                    temp[i].commission = (function () {
                        let commission_rate = a[0].commission_rate;
                        let commission_lowest = a[0].commission_lowest;
                        return commission_rate*temp[i].price > commission_lowest ? commission_rate*temp[i].price : commission_lowest
                    })();

                    temp[i].withdrawals = (temp[i].price - temp[i].refounLoss)*this.fixedCostData.withdraw_rate;
                    temp[i].totalCost = temp[i].price - temp[i].profit;
                    temp[i].profitMargin = temp[i].profit / temp[i].price;
                    temp[i].utilizationRatio = (temp[i].profit)/(parseFloat(this.fixedCostData.buy_price) +parseFloat(this.fixedCostData.domestic_logistics_price)
                        +parseFloat(this.fixedCostData.package_price) +parseFloat(a[0].logistics_price));

                }
                this.calculation = temp;

            },
            expectProfitMargin(v){
                if(v == '') return
                this.expectPrice = ''
                this.expectProfit = ''
                this.expectUtilizationRatio = ''

                let temp = {}
                v = v/100;
                for (let i in this.calculation){
                    let a = this.feeData.filter(item=>{
                        return item.id == i
                    })
                    temp[i] = {}
                    temp[i].profitMargin = parseFloat(v)
                    temp[i].price = (parseFloat(this.fixedCostData.buy_price) +parseFloat(this.fixedCostData.package_price)
                        +parseFloat(this.fixedCostData.domestic_logistics_price) +parseFloat(a[0].logistics_price)+
                        (parseFloat(a[0].oversea_fee_rmb)?parseFloat(a[0].oversea_fee_rmb):0))
                        /(1-parseFloat(this.fixedCostData.refund_rate)-(1-parseFloat(a[0].commission_rate))*this.fixedCostData.withdraw_rate
                        -parseFloat(a[0].commission_rate) -temp[i].profitMargin);

                    temp[i].profit = temp[i].profitMargin * temp[i].price

                    temp[i].refounLoss = this.fixedCostData.refund_rate * temp[i].price;
                    temp[i].commission = (function () {
                        let commission_rate = a[0].commission_rate;
                        let commission_lowest = a[0].commission_lowest;
                        return commission_rate*v > commission_lowest ? commission_rate*v : commission_lowest
                    })();
                    temp[i].withdrawals = (temp[i].price - temp[i].refounLoss)*this.fixedCostData.withdraw_rate;
                    temp[i].totalCost = temp[i].price - temp[i].profit;
                    temp[i].utilizationRatio = (temp[i].profit)/(parseFloat(this.fixedCostData.buy_price) +parseFloat(this.fixedCostData.domestic_logistics_price)
                        +parseFloat(this.fixedCostData.package_price) +parseFloat(a[0].logistics_price));

                }
                this.calculation = temp;




            },
            expectUtilizationRatio(v){
                if(v == '') return
                this.expectPrice = ''
                this.expectProfit = ''
                this.expectProfitMargin = ''


                let temp = {}
                for (let i in this.calculation){
                    let a = this.feeData.filter(item=>{
                        return item.id == i
                    })
                    temp[i] = {}
                    temp[i].utilizationRatio = parseFloat(v)
                    temp[i].profit = temp[i].utilizationRatio*(parseFloat(this.fixedCostData.buy_price) +parseFloat(this.fixedCostData.domestic_logistics_price)
                        +parseFloat(this.fixedCostData.package_price) +parseFloat(a[0].logistics_price))



                    temp[i].price = (temp[i].profit+ parseFloat(this.fixedCostData.buy_price) +parseFloat(this.fixedCostData.package_price)
                        +parseFloat(this.fixedCostData.domestic_logistics_price) +parseFloat(a[0].logistics_price)+
                        (parseFloat(a[0].oversea_fee_rmb)?parseFloat(a[0].oversea_fee_rmb):0))
                        /(1-parseFloat(this.fixedCostData.refund_rate)-(1-parseFloat(a[0].commission_rate))*this.fixedCostData.withdraw_rate-parseFloat(a[0].commission_rate));


                    temp[i].profitMargin = temp[i].profit / temp[i].price;
                    temp[i].refounLoss = this.fixedCostData.refund_rate * temp[i].price;
                    temp[i].commission = (function () {
                        let commission_rate = a[0].commission_rate;
                        let commission_lowest = a[0].commission_lowest;
                        return commission_rate*v > commission_lowest ? commission_rate*v : commission_lowest
                    })();
                    temp[i].withdrawals = (temp[i].price - temp[i].refounLoss)*this.fixedCostData.withdraw_rate;
                    temp[i].totalCost = temp[i].price - temp[i].profit;

                }
                this.calculation = temp;

            },
            checkedCountries(){
                this.tableDataFilter()
            },
            logisticSelect(){
                this.tableDataFilter()
            },
            overseaSelect(){
                this.tableDataFilter()
            },

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
        background: #fff;
        padding: 50px;
        border-radius: 5px;
    }
    .detail-contain{
        /*transform: translateY(50%);*/
        max-height: 100%;
        overflow-y: auto;
    }


</style>
