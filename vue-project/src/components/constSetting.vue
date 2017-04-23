<template>
  <div class="edit-fba contain">
    <el-card>
    <h1 class="left title">常量配置</h1>
    <el-form label-width="250px">

      <el-form-item :label="item.name" v-for="item in constSettingData" :key="item.id">
        <el-col :span="18">
          <el-input v-model="item.value"></el-input></el-col>
        <el-col :span="4">
        <el-button type="success" @click="onSubmit(item)">保存</el-button></el-col>
      </el-form-item>
    </el-form>
    </el-card>
  </div>
</template>

<script>
  import {mapState} from 'vuex'
export default {
  name: 'editFba',
  data () {
    return {
        constSettingData:[],
    }
  },
    computed:{
        ...mapState({
        }),
    },
  methods:{
      getConstSettingData(){
        this.$http({
            url:'/home/setting/getSettingData'
        }).then(res=>{
            if(res.body.status == 1){
                this.constSettingData = res.body.data;
            }
            console.log(res)
        })

      },
      onSubmit(item){
          let url = '/home/setting/save';

          this.$http.post(url,
              {
                  ...item
              }
          )
          .then((res)=>{
            if (res.body.status == 1){
                //success

                this.$notify({
                    title: '成功',
                    message: '保存成功',
                    type: 'success'
                });
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
    this.getConstSettingData()
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
