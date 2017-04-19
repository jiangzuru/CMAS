<template>
    <div class="fbafee contain">
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
                        :formatter="sizeFormatter"
                >
                </el-table-column>
                <el-table-column
                        prop="high_weight"
                        label="重量(g)"
                        sortable
                        :sort-method="weightSortMethod"
                        width="180">
                </el-table-column>
                <el-table-column
                        prop="sale_domain"
                        label="销售站点"
                        :filters="[{ text: '英国', value: '英国' }, { text: '德国 ', value: '德国' }, { text: '法国', value: '法国' }, { text: '意大利', value: '意大利' }, { text: '西班牙', 西班牙: '公司' }]"
                        :filter-method="filterTag">
                        width="180">
                </el-table-column>
                <el-table-column
                        prop="price"
                        label="基础服务费"
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
        </div>
        <div class="left" style="margin-top: 20px">
            <el-button type="primary" @click="toEditFba" >新增</el-button>
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
                  }else {
                      //TODO
                  }
              }
          )
      },
      sizeFormatter(row){
          return row.high_length+'*'+row.high_width+'*'+row.high_height;
      },
      toEditFba(){
          console.log(11)
          this.$router.push({path:'/index/editFba'})
      },
      weightSortMethod(a,b){
          return parseInt(a.high_weight )>parseInt( b.high_weight);
      },
      filterTag(value, row) {
          return row.sale_domain === value;
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
