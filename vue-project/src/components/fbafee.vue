<template>
    <div class="fbafee">
        <div class="left title">
            <h1>FBA基础服务费</h1>
        </div>
        <div>
            <el-table
                    :data="fbaFeeData"
                    border
                    style="width: 100%"
                    max-height="500"
            >
                <el-table-column
                        prop="size"
                        label="尺寸（cm）"
                        sortable
                        :formatter="sizeFormatter"
                >
                </el-table-column>
                <el-table-column
                        prop="high_weight"
                        label="重量(g)"
                        sortable
                        width="180">
                </el-table-column>
                <el-table-column
                        prop="sale_domain"
                        label="销售站点"
                        sortable
                        width="180">
                </el-table-column>
                <el-table-column
                        prop="price"
                        label="基础服务费"
                        sortable
                        width="180">
                </el-table-column>
                <el-table-column
                        prop="height"
                        label="操作"
                        sortable
                        width="100">
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
        fbaFeeData:[]
    }
  },
  methods: {
      getFbafeeData(){
          this.$http({
              url: '/home/FbaFee/getFbafeeData',
              params: {
              }
          })
          .then((res)=>{
                  if(res.body.error == 0){
                      this.fbaFeeData = res.body.data
                      console.log(this.fbaFeeData)
                  }else {
                      //TODO
                  }
              }
          )
      },
      sizeFormatter(row){
          return row.high_length+'*'+row.high_width+'*'+row.high_height;
      }
  },
    mounted(){
      this.getFbafeeData();
    }
}
</script>

<style scoped>
    .fbafee .title{
        font-size: 1.5em;
        margin:20px;
    }
</style>
