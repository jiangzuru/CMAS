<template>
  <div class="edit-fba contain">
    <el-row type="flex" justify="center">
      <el-col :span="16">
    <el-card>
    <h1 class="left title">新增海外仓服务费细则</h1>
    <el-form :model="form" label-width="150px">

      <el-form-item label="长度(cm)">
        <el-col :span="11">
          <el-input v-model="form.low_length"></el-input>
        </el-col>
        <el-col :span="2">——</el-col>
        <el-col :span="11">
          <el-input v-model="form.high_length"></el-input>
        </el-col>
      </el-form-item>
      <el-form-item label="宽度(cm)">
        <el-col :span="11">
        <el-input v-model="form.low_width"></el-input>
        </el-col>
        <el-col :span="2">——</el-col>
        <el-col :span="11">
        <el-input v-model="form.high_width"></el-input>
        </el-col>
      </el-form-item>
      <el-form-item label="高度(cm)">
        <el-col :span="11">
          <el-input v-model="form.low_height"></el-input>
        </el-col>
        <el-col :span="2">——</el-col>
        <el-col :span="11">
          <el-input v-model="form.high_height"></el-input>
        </el-col>
      </el-form-item>
      <el-form-item label="重量(g)">
        <el-col :span="11">
          <el-input v-model="form.low_weight"></el-input>
        </el-col>
        <el-col :span="2">——</el-col>
        <el-col :span="11">
          <el-input v-model="form.high_weight"></el-input>
        </el-col>
      </el-form-item>


      <el-form-item label="站点" style="text-align: left">
        <el-radio-group v-model="form.sale_domain">
          <el-radio label="英国">英国</el-radio>
          <el-radio label="德国">德国</el-radio>
          <el-radio label="法国">法国</el-radio>
          <el-radio label="意大利">意大利</el-radio>
          <el-radio label="西班牙">西班牙</el-radio>
        </el-radio-group>
      </el-form-item>


      <el-form-item label="亚马逊包装重量(g)">
        <el-input v-model="form.package_weight"></el-input>
      </el-form-item>

      <el-form-item label="价格(以当地货币计算)">
        <el-input v-model="form.price"></el-input>
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
  import {mapState} from 'vuex'
export default {
  name: 'editFba',
  data () {
    return {
    }
  },
    computed:{
        ...mapState({
            form: state=>state.manager.editFbafeeData
        }),
    },
  methods:{
      onSubmit(){
          let url = '';
          if(this.form.id == ''){
              url='/home/overseaFee/save'
          }else {
              url='/home/overseaFee/update'
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
                  this.$router.push({path:'/index/fbafee'})
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
  .edit-fba .title{
    font-size: 1.5em;
    margin:20px;
  }
</style>
