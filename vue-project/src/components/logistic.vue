<template>
    <div class="logistic contain">
        <el-card>
        <h1 class="left title">物流管理</h1>

            <div>
                <el-table
                        :data="logisticData"
                        border
                        style="width: 100%"
                        max-height="500"

                >
                    <el-table-column
                            prop="name"
                            label="名称"
                            sortable
                    >
                    </el-table-column>
                    <el-table-column
                            prop="destination"
                            label="目的地"
                            sortable
                            width="150">
                    </el-table-column>
                    <el-table-column
                            prop="price"
                            label="每千克价格"
                            sortable
                            width="200">
                    </el-table-column>
                    <el-table-column
                            prop="special_type"
                            label="特殊属性"
                            sortable
                            :formatter="function (row) {
                              switch(row.special_type){
                                  case '0':
                                      return '普通物品';
                                  case '1':
                                      return '电子产品'
                                  case '2':
                                      return '粉末'
                                  case '3':
                                      return '液体'
                              }
                            }"
                            width="200">
                    </el-table-column>
                    <el-table-column
                            prop="volume_number"
                            label="体积重系数"
                            sortable
                            width="200">
                    </el-table-column>
                    <el-table-column
                            label="操作"
                            width="180">
                        <template scope="scope">
                            <el-button @click="toEditLogistic(scope.row)">编辑</el-button>
                            <el-button @click="deleteConfirm(scope.row)">删除</el-button>
                        </template>
                    </el-table-column>
                </el-table>
                <div style="text-align: left;margin-top: 30px">
                    <el-button type="primary" @click="toEditLogistic(false)">新增</el-button>
                </div>
            </div>
        </el-card>
    </div>
</template>

<script>
    import {mapMutations} from 'vuex'
    export default {
        name: 'logistic',
        data () {
            return {
                logisticData:[],
            }
        },
        methods: {
            ...mapMutations([
                'updateEditLogisticData',
                'updateLogisticData'
            ]),
            getLogisticData(){
                return this.$http({
                    url:'/home/logistics/index'
                }).then(res=>{
                    if(res.body.status == 1){
                        this.updateLogisticData({logisticData:res.body.data});
                        this.logisticData = res.body.data.filter(function (item,index) {
                            return item.rank == 3
                        })
                    }
                    console.log(res)
                })
            },
            toEditLogistic(row){
                if(row){
                    this.updateEditLogisticData({logisticData:row})
                }else{
                    this.updateEditLogisticData()
                }
                this.$router.push({path:'/index/editLogistic'})
            },

            deleteConfirm(row){
                this.$confirm('确定删除' + row.name + '?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    this.deleteLogistic(row.id)
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
            deleteLogistic(id){
                return this.$http({
                    url: '/home/logistics/delete',
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
                            this.logisticData = this.logisticData.filter(function (item,index) {
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
        },
        mounted(){
            this.getLogisticData()

        }
    }
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
    .logistic .title {
        font-size: 1.5em;
        margin: 20px;
    }
</style>
