// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
import router from './router'
import ElementUI from 'element-ui'
import VueResource from 'vue-resource'
import 'element-ui/lib/theme-default/index.css'
import '@/assets/css/reset.css'
import Vuex from 'vuex'
Vue.config.productionTip = false
Vue.use(ElementUI)
Vue.use(VueResource)
Vue.http.options.emulateJSON = true;
Vue.use(Vuex)

let store = new Vuex.Store({
    // strict: debug,
})

store.registerModule('manager', {
    state: {
        username:'',
    },
    mutations: {
        login(state, payload){
            state.username = payload.name;
        },

    },
    actions:{
        adlogout(store){
            return Vue.http({
                method: 'post',
                url: '/index/index/signout',
                params: {},
            })
        },
    }
})

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  store,
  template: '<App/>',
  components: { App }
})
