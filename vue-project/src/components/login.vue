<template>
    <div style="background: #0090e4;position: relative;width: 100%;" :style="{height:windowHeight+'px'}">
    <el-row type="flex" justify="center" style="position: absolute;top: 50%;transform: translateY(-50%);width: 100%;">
        <el-col :span="12">
        <el-card>
            <el-tabs v-model="action">
                <el-tab-pane label="登录" name="login">
                    <el-form :model="loginForm"  label-width="100px" class="">
                        <el-form-item label="用户名">
                            <el-input type="text" v-model="loginForm.account" auto-complete="off"></el-input>
                        </el-form-item>
                        <el-form-item label="密码">
                            <el-input type="password" v-model="loginForm.password" auto-complete="off"></el-input>
                        </el-form-item>
                        <el-form-item>
                            <el-button type="primary" @click="">登录</el-button>
                        </el-form-item>
                    </el-form>
                </el-tab-pane>
                <el-tab-pane label="注册" name="registere">
                    <el-form :model="loginForm"  label-width="100px" class="">
                        <el-form-item label="新用户名">
                            <el-input type="text" v-model="loginForm.account" auto-complete="off"></el-input>
                        </el-form-item>
                        <el-form-item label="密码">
                            <el-input type="password" v-model="loginForm.password" auto-complete="off"></el-input>
                        </el-form-item>
                        <el-form-item>
                            <el-button type="primary" @click="">提交注册</el-button>
                        </el-form-item>
                    </el-form>
                </el-tab-pane>
            </el-tabs>

        </el-card>
        </el-col>
    </el-row>
    </div>
</template>

<script>

import {mapState,mapMutations} from 'vuex'

    export default {
        name: 'login',
        data () {
            return {
                action:'login',
                windowHeight:window.innerHeight,
                loginForm:{
                    account:'',
                    password:''
                }
            }
        },
        computed: {
            ...mapState({

            }),
        },
        methods: {
            ...mapMutations([
                'updateEditAsinData',
            ]),
        },
        mounted(){
        }
    }
</script>

<style scoped>


</style>
