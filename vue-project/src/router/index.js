import Vue from 'vue'
import Router from 'vue-router'
import Login from '@/components/login'
import Index from '@/components/index'
import Sku from '@/components/sku'
import Fbafee from  '@/components/fbafee'
import EditSku from '@/components/editSku'
import EditFba from '@/components/editFba'
import Logistic from '@/components/logistic'
import EditLogistic from '@/components/editLogistic'
import ConstSetting from '@/components/constSetting'
import Commission from '@/components/commission'
import EditCommission from '@/components/editCommission'
import Asin from '@/components/asin'
import EditAsin from '@/components/editAsin'


import Test from '@/components/test'


Vue.use(Router)
let checkLogin = true
let router = new Router({
  routes: [
      {
          path: '/',
          redirect:'/index'
      },
      {
          path:'/login',
          name:'login',
          component:Login
      },
      {
          path: '/index',
          name: 'index',
          component: Index,
          children:[
              {
                  path:'sku',
                  name:'sku',
                  component:Sku
              },
              {
                  path:'fbafee',
                  name:'fbafee',
                  component:Fbafee
              },
              {
                  path:'editSku',
                  name:'editSku',
                  component:EditSku
              },
              {
                  path:'editFba',
                  name:'editFba',
                  component:EditFba
              },
              {
                  path:'logistic',
                  name:'logistic',
                  component:Logistic
              },
              {
                  path:'editLogistic',
                  name:'editLogistic',
                  component:EditLogistic
              },
              {
                  path:'commission',
                  name:'commission',
                  component:Commission
              },
              {
                  path:'editCommission',
                  name:'editCommission',
                  component:EditCommission
              },
              {
                  path:'asin',
                  name:'asin',
                  component:Asin
              },
              {
                  path:'editAsin',
                  name:'editAsin',
                  component:EditAsin
              }
          ]
      },
      {
          path: '/setting',
          name: 'settingIndex',
          component: Index,
          children:[
              {
                  path:'constSetting',
                  name:'constSetting',
                  component:ConstSetting
              },
          ]
      },
      {
          path: '/test',
          name: 'test',
          component: Test,
          // children:[
          //     {
          //         path:'constSetting',
          //         name:'constSetting',
          //         component:ConstSetting
          //     },
          // ]
      }
  ]
})
router.beforeEach(function (to, from, next) {
    var login = getCookie('userinfo_account')
    var toUrl = to.path
    if(!checkLogin){
        next()
        return
    }
    if(login || toUrl =='/login'){
        next()
    }else{
        next('/login');
    }
})

function getCookie(name) {
    var arr,reg=new RegExp("(^| )"+name+"=([^;]*)(;|$)");
    if(arr=document.cookie.match(reg))
        return unescape(arr[2]);
    else
        return null;
}

export default router