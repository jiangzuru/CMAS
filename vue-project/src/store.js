// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import Vuex from 'vuex'
Vue.use(Vuex)

let store = new Vuex.Store({
    // strict: debug,
})

store.registerModule('manager', {
    state: {
        username:'',
        countriesOption:['英国', '法国', '德国', '意大利', '西班牙', '美国', '加拿大', '墨西哥', '日本'],
        skuDetail:{
            isShow:false,
            id:'',
        },
        logisticData:[],
        editSkuData:{
            buy_price:'',
            domestic_logistics_price:'',
            height:'',
            id:'',
            length:'',
            logistics_type:[],
            package_price:'',
            sku:'',
            weight:'',
            width:''
        },
        editFbafeeData:{
            high_height:'',
            high_length:'',
            high_weight:'',
            high_width:'',
            id:'',
            low_height:'',
            low_length:'',
            low_weight:'',
            low_width:'',
            package_weight:'',
            price:'',
            sale_domain:'',
        },
        editLogisticData:{
            destination:'',
            id:'',
            name:'',
            only_weight:'',
            pid:'',
            price:'',
            rank:'1',
            special_type:'',
            volume_number:'',
        },
    },
    mutations: {
        login(state, payload){
            state.username = payload.name;
        },
        updateSkuDetail(state,payload){
          state.skuDetail = Object.assign({},state.skuDetail,payload.skuDetail);
        },
        updateLogisticData(state,payload){
          state.logisticData =   Object.assign({},state.logisticData,payload.logisticData);
        },
        updateEditSkuData(state,payload={skuData:{
            buy_price:'',
            domestic_logistics_price:'',
            height:'',
            id:'',
            length:'',
            logistics_type:'',
            package_price:'',
            sku:'',
            weight:'',
            width:''
        }}){
            state.editSkuData = payload.skuData;
        },

        updateEditFbaFeeData(state,payload={fbaFeeData:{
            high_height:'',
            high_length:'',
            high_weight:'',
            high_width:'',
            id:'',
            low_height:'',
            low_length:'',
            low_weight:'',
            low_width:'',
            package_weight:'',
            price:'',
            sale_domain:'',
        }}){
            state.editFbafeeData = payload.fbaFeeData;
        },
        updateEditLogisticData(state,payload={logisticData:{
            destination:'',
            id:'',
            name:'',
            only_weight:'',
            pid:'',
            price:'',
            rank:'1',
            special_type:'',
            volume_number:'',
        }}){
            state.editLogisticData = Object.assign({},state.editLogisticData,payload.logisticData)
        }

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

export default store;
