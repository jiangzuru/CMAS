import Vue from 'vue'
import Router from 'vue-router'
import Index from '@/components/index'
import Sku from '@/components/sku'
import Fbafee from  '@/components/fbafee'
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
              }
          ]
      }
  ]
})
