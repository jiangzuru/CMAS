<template>
    <div class="fbafee contain">
        <el-card>
        <div class="left title">
            <h1>海外仓管理</h1>
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
                        prop="type_name"
                        label="海外仓名"
                >
                </el-table-column>
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
                        <el-button @click="toEditFba(scope.row)">编辑</el-button>
                        <el-button @click="deleteConfirm(scope.row)">删除</el-button>
                    </template>
                </el-table-column>
            </el-table>
        </div>
        <div class="left" style="margin-top: 20px">
            <el-button type="primary" @click="toEditFba(false)" >新增</el-button>
        </div>
        </el-card>
    </div>
</template>

<script>

import {mapState, mapMutations} from 'vuex'

export default {
  name: 'fbafee',
  data () {
    return {
        fbaFeeData:[],
        loadingTable:true,
        searchStr:'',
        tableShowData:[]
    }
  },
  methods: {
      ...mapMutations([
          'updateEditFbaFeeData'
      ]),
      getFbafeeData(){
          this.$http({
              url: '/home/overseaFee/getOverseaFeeData',
              params: {
              }
          })
          .then((res)=>{
                  if(res.body.error == 0){
                      this.fbaFeeData = res.body.data
                      this.tableShowData = this.fbaFeeData
                  }else {
                      //TODO
                  }
              this.loadingTable = false
              }
          )
      },
      sizeFormatter(row){
          return row.high_length+'*'+row.high_width+'*'+row.high_height;
      },
      toEditFba(row){
          if(row){
              this.updateEditFbaFeeData({fbaFeeData:row});
          }else{
              this.updateEditFbaFeeData()
          }
          this.$router.push({path:'/index/editFba'})
      },
      deleteFba(id){
          return this.$http({
              url: '/home/overseaFee/delete',
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
      deleteConfirm(row){
          this.$confirm('确定删除?', '提示', {
              confirmButtonText: '确定',
              cancelButtonText: '取消',
              type: 'warning'
          }).then(() => {
              this.deleteFba(row.id)
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
      weightSortMethod(a,b){
          return parseInt(a.high_weight )>parseInt( b.high_weight);
      },
      filterTag(value, row) {
          return row.sale_domain === value;
      },
      searchBtn(){

          if(this.searchStr == ''){
              return this.tableShowData = this.fbaFeeData
          }else{
              this.tableShowData = this.fbaFeeData.filter((item,index)=>{
                  return JSON.stringify(item).toLowerCase().indexOf(this.searchStr.toLowerCase()) >= 0
              })
          }
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
