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
            width:'',
            special_type:['0'],
            sort_name:''
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
            commission:'',
            type_name:''
        },
        editLogisticData:{
            destination:'',
            id:'',
            name:'',
            only_weight:'',
            pid:'',
            price:'',
            rank:'3',
            special_type:["0"],
            volume_number:'',
            is_oversea:'',
            deal_fee:''
        },
        editCommissionData:{
            id:'',
            lowest:'',
            name:'',
            sale_domain:'',
            value:'',
        },
        eidtAsinData:{
            id:'',
            name:'',
            asin:'',
            nation:'',
            competer_asin:'',
            competer_name:'',
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
            width:'',
            special_type:['0'],
            sort_name:''
        }}){
            if(typeof(payload.skuData.special_type) == "string"){
                payload.skuData.special_type = payload.skuData.special_type.split(',')
            }
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
            type_name:''
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
            rank:'3',
            special_type:["0"],
            volume_number:'',
            is_oversea:'',
            deal_fee:''
        }}){
            if(typeof(payload.logisticData.special_type) == "string"){
                payload.logisticData.special_type = payload.logisticData.special_type.split(',')
            }

            state.editLogisticData = Object.assign({},state.editLogisticData,payload.logisticData)
        },
        updateEditCommissionData(state,payload={commissionData:{
            id:'',
            lowest:'',
            name:'',
            sale_domain:'',
            value:''}}){
            state.eidtCommissionData = payload.commissionData;
        },
        updateEditAsinData(state,payload={asinData:{
            id:'',
            name:'',
            asin:'',
            nation:'',
            competer_asin:'',
            competer_name:'',}}){
            console.error(payload)
            state.eidtAsinData = payload.asinData;
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
