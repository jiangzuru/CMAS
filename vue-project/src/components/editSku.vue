<template>
  <div class="edit-sku contain">
    <el-row type="flex" justify="center">
    <el-col :span="16">
    <el-card>
    <el-row>
      <!--<el-col :span="2">-->
      <!--<el-button @click="goBackHistory" type="primary">返回</el-button>-->
      <!--</el-col>-->
      <el-col :span="22">
      <h1 class="left title">{{ (form.id==''||form.id == '0')?'新增':'编辑'}}SKU</h1>
      </el-col>
    </el-row>

    <el-form :model="form" label-width="250px" :rules="formRules" ref="ruleForm">

      <el-form-item label="Sku" prop="sku">
        <el-input v-model="form.sku" :disabled="!(form.id == 0)" ></el-input>
      </el-form-item>
      <el-form-item label="重量(g)" prop="weight">
        <el-input v-model="form.weight"></el-input>
      </el-form-item>
      <el-form-item label="长度(cm)" prop="length">
        <el-input v-model="form.length"></el-input>
      </el-form-item>
      <el-form-item label="宽度(cm)" prop="width">
        <el-input v-model="form.width"></el-input>
      </el-form-item>
      <el-form-item label="高度(cm)" prop="height">
        <el-input v-model="form.height"></el-input>
      </el-form-item>
      <el-form-item label="进货价(以人民币元为单位)" prop="buy_price">
        <el-input v-model="form.buy_price"></el-input>
      </el-form-item>
      <el-form-item label="国内端运费(以人民币元为单位)" prop="domestic_logistics_price">
        <el-input v-model="form.domestic_logistics_price"></el-input>
      </el-form-item>
      <el-form-item label="包装成本(以人民币元为单位)" prop="package_price">
        <el-input v-model="form.package_price"></el-input>
      </el-form-item>


      <!--<el-form-item label="物流方式" prop="logistics_type" style="text-align: left">-->
        <!--<el-cascader-->
                <!--:options="logisticOption"-->
                <!--v-model="logistics_type"-->
                <!--expand-trigger="hover"-->
        <!--&gt;-->
        <!--</el-cascader>-->
      <!--</el-form-item>-->
      <!--<el-form-item label="是否海外头程仓" class="left">-->
        <!--<el-radio-group v-model="form.is_oversea">-->
        <!--<el-radio label="1">是</el-radio>-->
        <!--<el-radio label="0">否</el-radio>-->
        <!--</el-radio-group>-->
      <!--</el-form-item>-->


      <el-form-item label="特殊属性" style="text-align: left">
        <el-checkbox-group v-model="type">
          <el-checkbox label="1" name="type">电子产品</el-checkbox>
          <el-checkbox label="2" name="type">粉液</el-checkbox>
        </el-checkbox-group>
      </el-form-item>


      <el-form-item label="品类" class="left">
        <el-select v-model="form.sort_name">
          <el-option v-for="(item,index) in commissionList" :key="index" :value="item.name"></el-option>
        </el-select>
      </el-form-item>

      <el-form-item>
        <el-button type="success" @click="onSubmit">保存</el-button>
        <el-button type="danger" @click="goBackHistory">取消</el-button>
        <el-button type="info" @click="goTryCalculate">成本试算</el-button>
      </el-form-item>


    </el-form>
    </el-card>
    </el-col>
    </el-row>

    <sku-detail v-if="skuDetail.isShow"></sku-detail>
  </div>
</template>

<script>
  import {mapState,mapMutations} from 'vuex'
  import skuDetail from '@/components/skuDetail'
export default {
  name: 'editSku',
  data () {

      var validate_logistice_type = function(rule, value, callback){
          console.log(rule)
          console.log(value)
          console.log(callback)
      };
    return {
        logisticOption:[],
        logistics_type:[],
        type:[],

        formRules:{
            sku:[{ required: true, message: '请输入SKU名称', trigger: 'blur' }],
            weight:[{ required: true, message: '请输入重量', trigger: 'blur' }],
            length:[{ required: true, message: '请输入长度', trigger: 'blur' }],
            width:[{ required: true, message: '请输入宽度', trigger: 'blur' }],
            height:[{ required: true, message: '请输入高度', trigger: 'blur' }],
            buy_price:[{ required: true, message: '请输入进货简价', trigger: 'blur' }],
            domestic_logistics_price:[{ required: true, message: '请输入国内端运费', trigger: 'blur' }],
            package_price:[{ required: true, message: '请输入包装成本', trigger: 'blur' }],
//            logistics_type:[{ validator:validate_logistice_type, trigger: 'blur' }],

        },

        commissionList:[]

    }
  },
    components:{skuDetail},
    computed:{
        ...mapState({
            form:state=>state.manager.editSkuData,
            skuDetail:state=>state.manager.skuDetail
        })
    },
  methods:{
      ...mapMutations([
          'updateSkuDetail'
      ]),
      onSubmit(){
          var validate =false;
          this.$refs.ruleForm.validate(res=>{
              console.log(res)
              validate = res;
          })
          if(!validate) return;
          let type = this.type.join(',')
          let url='';
          if(this.form.id == ''){
              url = '/home/skuDetail/save';
          }else{
              url = '/home/skuDetail/update'
//              this.form.id = this.sku_id;
          }
          this.form.logistics_type = this.logistics_type[2];
          console.log()
          this.$http.post(url,
              {
                  ...this.form,
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
      },
      goBackHistory(){
          this.$router.go(-1);
      },
      getLogisticsData(){
          this.$http({
              url:'/home/logistics/getLogisticsData'
          }).then(res=>{
              console.log(res)
              if(res.body.status == 1){
                  console.log(res.body.data)
                  this.logisticOption = res.body.data


              }
          })
      },
      getCommissionData(){
        return this.$http({
            url:'/home/skuDetail/getCommissionData'
        }).then(res=>{
            console.log(res)
            this.commissionList = res.body.data;
        })
      },
      goTryCalculate(){
          this.form.isShow = true
          this.form.id = '0'
          this.updateSkuDetail({skuDetail:this.form})
      }
  },
  mounted(){
//    this.getLogisticsData()
      this.getCommissionData()
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
