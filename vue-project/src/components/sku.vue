<template>
    <div>
        <div> SKU管理</div>
        <div>
            <el-table
                    :data="skuData"
                    border
                    style="width: 100%"
                    :default-sort = "{prop: 'date', order: 'descending'}"
            >
                <el-table-column
                        prop="sku"
                        label="SKU"
                        sortable
                        width="100">
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
    </div>
</template>

<script>
export default {
  name: 'sku',
  data () {
    return {
        skuData:[]
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
      }
  },
    mounted(){
      this.getSkuData();
    }
}
</script>

<style scoped>
</style>
