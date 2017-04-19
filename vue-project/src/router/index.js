import Vue from 'vue'
import Router from 'vue-router'
import Index from '@/components/index'
import Sku from '@/components/sku'
import Fbafee from  '@/components/fbafee'
import EditSku from '@/components/editSku'
import EditFba from '@/components/editFba'
import Logistic from '@/components/logistic'
Vue.use(Router)

export default new Router({
  routes: [
      {
          path: '/',
          redirect:'/index'
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
                  path:'editSku/:id/:sku',
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
              }
          ]
      }
  ]
})
