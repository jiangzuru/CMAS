<template>
    <div class="edit-fba contain">
        <el-row type="flex" justify="center">
            <el-col :span="16">
        <el-card>
        <h1 class="left title">{{form.id==''?'新增':'编辑'}}物流管理细则</h1>

        <div style="margin: 20px auto">
            <el-radio-group v-model="radio" @change="changeRadioHandle">
                <el-radio label="1" :disabled="(form.id != '')">一级菜单</el-radio>
                <el-radio label="2" :disabled="(form.id != '')">二级菜单</el-radio>
                <el-radio label="3">三级菜单</el-radio>
            </el-radio-group>
        </div>

        <el-form :model="form" label-width="150px">
            <el-form-item label="物流名称">
                <el-input v-model="form.name"></el-input>
            </el-form-item>

            <el-form-item label="上级菜单" v-if="radio != 1" style="text-align: left">
                <el-select v-model="form.pid" placeholder="请选择">
                    <el-option
                            v-for="(item,index) in parentSelects"
                            key="{{index}}"
                            :label="item.name"
                            :value="item.id"
                            :disabled="item.disabled">
                    </el-option>
                </el-select>
            </el-form-item>
            <div v-if="radio == 3">
            <el-form-item label="目的地" class="left">
                <el-input v-model="form.destination" style="width: 250px;"></el-input>
                <span>可以输入多个国家，以‘,’(半角逗号)分割</span>
            </el-form-item>
            <el-form-item label="是否计算体积重"  style="text-align: left">
                <el-radio-group v-model="form.only_weight">
                    <el-radio label="0">不计算</el-radio>
                    <el-radio label="1">计算</el-radio>
                </el-radio-group>
            </el-form-item>
            <el-form-item label="每千克运输价格">
                <el-input></el-input>
            </el-form-item>
            <el-form-item label="特殊物品属性" style="text-align: left">
                <el-radio-group v-model="form.special_type">
                    <el-radio label="0" name="type">普通</el-radio>
                    <el-radio label="1" name="type">电子产品</el-radio>
                    <el-radio label="2" name="type">粉末</el-radio>
                    <el-radio label="3" name="type">液体</el-radio>
                </el-radio-group>
            </el-form-item>
            <el-form-item label="体积重系数">
                <el-input></el-input>
            </el-form-item>
            </div>
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
    export default {
        name: 'editLogistic',
        data () {
            return {
                radio:3,
                parentSelects:[]
            }
        },
        computed:{
            ...mapState({
                form: state=>state.manager.editLogisticData,
                logisticData:state=>state.manager.logisticData,
            }),
        },
        methods:{
            ...mapMutations([
               'updateLogisticData'
            ]),
            changeRadioHandle(v,oldV){
                console.log(oldV)
                let arr = []
                for(let i in this.logisticData){
                    if(this.logisticData[i].rank == (v-1)){
                        arr.push(this.logisticData[i])
                    }
                }
                this.parentSelects = arr;
                if(this.form.id =='' )
                this.form.pid = ''
            },
            onSubmit(){
                let url = '';
                if(this.form.id == ''){
                    url='/home/logistics/save'
                }else {
                    url='/home/logistics/update'
                }
                this.form.rank = this.radio
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
//                                this.$router.push({path:'/index/fbafee'})
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
            getLogisticData(){
                return this.$http({
                    url:'/home/logistics/index'
                }).then(res=>{
                    if(res.body.status == 1){
                        this.updateLogisticData({logisticData:res.body.data});
                    }
                    console.log(res)
                })
            },

            goBackHistory(){
                this.$router.go(-1);
            },
        },
        mounted(){
            this.radio = this.form.rank
            console.log(this.logisticData)
            if(this.logisticData.length == 0){
                this.getLogisticData()
            }


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
