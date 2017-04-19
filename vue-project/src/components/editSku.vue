<template>
  <div class="edit-sku contain">
    <el-row>
      <h1 class="left title">{{titleStatus}}SKU</h1>
    </el-row>

    <el-form :model="form" label-width="250px">

      <el-form-item label="Sku">
        <el-input v-model="form.sku" :disabled="!skuChangeAble"></el-input>
      </el-form-item>
      <el-form-item label="重量(g)">
        <el-input v-model="form.weight"></el-input>
      </el-form-item>
      <el-form-item label="长度(cm)">
        <el-input v-model="form.length"></el-input>
      </el-form-item>
      <el-form-item label="宽度(cm)">
        <el-input v-model="form.width"></el-input>
      </el-form-item>
      <el-form-item label="高度(cm)">
        <el-input v-model="form.height"></el-input>
      </el-form-item>
      <el-form-item label="进货价(以人民币元为单位)">
        <el-input v-model="form.buy_price"></el-input>
      </el-form-item>
      <el-form-item label="国内端运费(以人民币元为单位)">
        <el-input v-model="form.domestic_logistics_price"></el-input>
      </el-form-item>
      <el-form-item label="包装成本(以人民币元为单位)">
        <el-input v-model="form.package_price"></el-input>
      </el-form-item>


      <el-form-item label="物流方式" style="text-align: left">
        <el-radio-group v-model="form.logistics_type">
          <el-radio label="1">直邮</el-radio>
          <el-radio label="2">FBA</el-radio>
        </el-radio-group>
      </el-form-item>


      <el-form-item label="特殊属性" style="text-align: left">
        <el-checkbox-group v-model="form.type">
          <el-checkbox label="1" name="type">电子产品</el-checkbox>
          <el-checkbox label="2" name="type">粉末</el-checkbox>
          <el-checkbox label="3" name="type">液体</el-checkbox>
        </el-checkbox-group>
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
        titleStatus:'新增',
        sku_id:-1,
        form:{
          sku:'',
          weight: "1.00",
          length: "1.00",
          width: "1.00",
          height: "1.00",
          buy_price: "1.00",
          domestic_logistics_price: "1.00",
          package_price: "1.00",
          logistics_type: "1",
          type:[]
        },
        skuChangeAble:true
    }
  },
  methods:{
      onSubmit(){
          let {type,...form} = this.form;
          type = type.join(',')
          let url='';
          if(this.sku_id == -1){
              url = '/home/skuDetail/save';
          }else{
              url = '/home/skuDetail/update'
              this.form.id = this.sku_id;
          }

//          this.$http({
//              url:url,
//              params:{
//                  ...form,
//                  type
//              }
//          })
          this.$http.post(url,
              {
                  ...form,
                  type
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
                  this.$router.push({path:'/index/sku'})
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
      let sku_id = this.$route.params.id;
      let sku = this.$route.params.sku;
      this.sku_id = sku_id;
      this.form.sku = sku;
      if(sku_id > -1) {
          this.skuChangeAble = false
          this.titleStatus = '编辑'
      }

  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  .edit-sku .title{
    font-size: 1.5em;
    margin:20px;
  }
</style>
