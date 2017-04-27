<template>
    <div class="edit-fba contain">
        <el-row type="flex" justify="center">
            <el-col :span="16">
                <el-card>
                    <h1 class="left title">{{form.id ==''?'新增':'编辑'}}佣金管理细则</h1>
                    <el-form :model="form" label-width="150px">

                        <el-form-item label="品类名称">
                                <el-input v-model="form.name"></el-input>
                        </el-form-item>
                        <el-form-item label="佣金费率" class="left">
                                <el-input v-model="form.value" style="width: 30%;"></el-input>
                            <span>（请用小数方式填写）</span>
                        </el-form-item>
                        <el-form-item label="最低佣金" class="left">
                                <el-input v-model="form.lowest" style="width: 30%;"></el-input>
                            <span>（请用小数方式填写）</span>
                        </el-form-item>
                        <el-form-item label="站点)">
                                <el-input v-model="form.sale_domain"></el-input>
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
        name: 'editCommission',
        data () {
            return {
            }
        },
        computed:{
            ...mapState({
                form: state=>state.manager.editCommissionData
            }),
        },
        methods:{
            onSubmit(){
                let url = '';
                if(this.form.id == ''){
                    url='/home/commission/save'
                }else {
                    url='/home/commission/update'
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
                                this.$router.push({path:'/index/commission'})
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
