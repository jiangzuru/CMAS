<template>
  <div class="edit-fba contain">
    <h1 class="left title">新增FBA基础服务费细则</h1>
    <el-form :model="form" label-width="250px">

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
        <el-button type="primary" @click="onSubmit">保存</el-button>
        <el-button>取消</el-button>
      </el-form-item>
    </el-form>
  </div>
</template>

<script>
export default {
  name: 'editSku',
  data () {
    return {
        sku_id:-1,
        form:{
            low_length:0,
            high_length: 0,
            low_width: 0,
            high_width: 0,
            low_height: 0,
            high_height: 0,
            low_weight: 0,
            high_weight: 0,
            sale_domain: 0,
            package_weight:0,
            price:0
        },
        skuChangeAble:true
    }
  },
  methods:{
      onSubmit(){
          this.$http.post('/home/fbaFee/save',
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
      }
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
