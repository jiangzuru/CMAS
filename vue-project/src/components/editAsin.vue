<template>
  <div class="edit-asin contain">
    <el-row type="flex" justify="center">
    <el-col :span="16">
    <el-card>
    <el-row>
      <el-col :span="22">
      <h1 class="left title">{{ (form.id==''||form.id == '0')?'新增':'编辑'}}ASIN</h1>
      </el-col>
    </el-row>

    <el-form :model="form" label-width="250px"  ref="ruleForm">

      <el-form-item label="名称" >
        <el-input v-model="form.name"  ></el-input>
      </el-form-item>
      <el-form-item label="ASIN码" >
        <el-input v-model="form.asin"></el-input>
      </el-form-item>
      <el-form-item label="站点" >
        <el-input v-model="form.nation"></el-input>
      </el-form-item>
      <el-form-item label="竞争对手ASIN" >
        <el-input v-model="form.competer_asin"></el-input>
        <span>可以输入多个ASIN，以‘,’(半角逗号)分割</span>
      </el-form-item>

      <el-form-item>
        <el-button type="success" @click="onSubmit">保存</el-button>
        <el-button type="danger" @click="goBackHistory">取消</el-button>
      </el-form-item>


    </el-form>
    </el-card>
    </el-col>
    </el-row>

  </div>
</template>

<script>
  import {mapState,mapMutations} from 'vuex'
  import skuDetail from '@/components/skuDetail'
export default {
  name: 'editAsin',
  data () {

    return {

    }
  },
    computed:{
        ...mapState({
            form:state=>state.manager.eidtAsinData,
        })
    },
  methods:{
      ...mapMutations([
//          'updateSkuDetail'
      ]),
      onSubmit(){
          let url='';
          if(this.form.id == '' || this.form.id == 0){
              url = '/home/asinManage/save';
          }else{
              url = '/home/asinManage/update'
//              this.form.id = this.sku_id;
          }
          this.$http.post(url,
              {
                  ...this.form,
              }
          )
          .then((res)=>{

            if (res.body.status == 1){
                //success

                this.$notify({
                    title: '成功',
                    message: '保存成功,正在跳转...',
                    type: 'success'
                });
                setTimeout(function () {
                  this.$router.push({path:'/index/asin'})
                }.bind(this),1500)
            }else{
                this.$notify({
                    title: '失败',
                    message: res.body.message,
                    type: 'error'
                });
            }
          })
      },
      goBackHistory(){
          this.$router.go(-1);
      },
  },
  mounted(){
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  .edit-asin .title{
    font-size: 1.5em;
    margin:20px;
  }
</style>
