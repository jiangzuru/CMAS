<template>
    <div>
        <div> SKU管理</div>
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
                        prop="date"
                        label="操作"
                        width="180">
                </el-table-column>
            </el-table>
        </div>
        <!-- 弹出表格-->
        <div v-if="showDetailId" class="skuDetail">
            <div class="background">

            </div>
            <el-row type="flex" justify="center" >
                <el-col :span="16" class="context">
                <div >
                    <el-checkbox :indeterminate="isIndeterminate" v-model="checkAll" @change="handleCheckAllChange">全选</el-checkbox>
                    <el-checkbox-group v-model="checkedCountries" @change="handleCheckedcountriesChange">
                        <el-checkbox v-for="(city ,index) in countries" :label="city" :key="index">{{city}}</el-checkbox>
                    </el-checkbox-group>

                </div>

                <el-row :gutter="10">
                    <el-col :span="6" v-for="(item,index) in countries" :key="index" >
                    <el-input  placeholder="请输入内容" v-model="countriesFee[item]">
                        <template slot="prepend">{{item}}</template>
                    </el-input>
                    </el-col>
                </el-row>
                </el-col>
            </el-row>
        </div>

    </div>
</template>

<script>
const countryOptions = ['上海 ', '北京', '广州', '深圳'];

export default {
  name: 'sku',
  data () {
    return {
        skuData:[],
        showDetailId:0,
        countries:countryOptions,
        isIndeterminate: true,
        checkAll: true,
        checkedCountries:[],
        countriesFee:{}
    }
  },
  methods: {
      getSkuData(){
          this.$http({
              url: '/home/skuDetail/getSkuData',
              params: {
              }
          })
          .then((res)=>{
                  if(res.body.error == 0){
                      this.skuData = res.body.data
                      console.log(this.skuData)
                  }else {
                      //TODO
                  }
              }
          )
      },
      logisticeTypeFormatter(row,column){
          switch (row.logistics_type){
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
      },
      handleCheckAllChange(event) {
          this.checkedCountries = event.target.checked ? countryOptions : [];
          this.isIndeterminate = false;
      },
      handleCheckedcountriesChange(value) {
          let checkedCount = value.length;
          this.checkAll = checkedCount === this.countries.length;
          this.isIndeterminate = checkedCount > 0 && checkedCount < this.countries.length;
      }
  },
    mounted(){
      this.getSkuData();
    }
}
</script>

<style scoped>
    .skuDetail{
        position: fixed;
        top:0;
        left:0;
        height:100%;
        width:100%;
        z-index:100;
    }
    .skuDetail .background{
        position: absolute;
        height: 100%;
        width:100%;
        background: rgba(0,0,0,0.5);
    }
    .skuDetail .context{
        background: #fff;
    }
</style>
