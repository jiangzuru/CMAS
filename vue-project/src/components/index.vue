<template>
<div>
      <el-row :style="{minHeight: dHeight+'px'}">
          <el-col :xs="0" :sm="4" :md="4" :lg="4" style="height: 100%;background: #000" :style="{minHeight: dHeight+'px'}">
              <div class="">
                  <el-menu default-active="2" class="el-menu-vertical-demo" @open="handleOpen" @close="handleClose"
                           theme="dark" style="border-radius: 0px">
                      <el-submenu index="1">
                          <template slot="title">成本管理</template>
                          <router-link to="/index/sku">
                              <el-menu-item index="1-1">SKU</el-menu-item>
                          </router-link>
                          <router-link to="/index/fbafee">
                              <el-menu-item index="1-2">fba基础服务费</el-menu-item>
                          </router-link>
                      </el-submenu>
                      <el-submenu index="2">
                      <template slot="title">配置</template>
                      <router-link to="/index/setting">
                          <el-menu-item index="2-1">常量配置</el-menu-item>
                      </router-link>
                  </el-submenu>
                      <!--<el-menu-item index="2">导航二</el-menu-item>-->
                      <!--<el-menu-item index="3">导航三</el-menu-item>-->
                  </el-menu>
              </div>
          </el-col>
          <el-col :xs="24" :sm="20" :md="20" :lg="20">
              <el-row>
                <div style="background: #48576a;text-align: left;font-size: 30px;color: #fff">后台管理系统</div>
              </el-row>
              <el-row>
              <router-view></router-view>
              </el-row>
          </el-col>
      </el-row>
  </div>
</template>

<script>
export default {
  name: 'index',
  data () {
    return {
        dHeight:window.innerHeight
    }
  },
  methods: {
    handleOpen(key, keyPath) {
//    console.log(key, keyPath);
    },
    handleClose(key, keyPath) {
//    console.log(key, keyPath);
    }
  },
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
</style>
