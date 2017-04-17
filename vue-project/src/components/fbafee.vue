<template>
    <div>
    </div>
</template>

<script>
export default {
  name: 'sku',
  data () {
    return {
        skuData:[]
    }
  },
  methods: {
      getSkuData(){
          this.$http({
              url: '/home/skuDetail/getSkuData',
              params: {
              }
          })
          .then((res)=>{
                  if(res.body.error == 0){
                      this.skuData = res.body.data
                      console.log(this.skuData)
                  }else {
                      //TODO
                  }
              }
          )
      },
      logisticeTypeFormatter(row,column){
          switch (row.logistics_type){
              case '1':
                  return '国内直邮';
                  break;
              case '2':
                  return 'FBA';
                  break;
              default:
                  return 'sha?';
                  break;
          }
      }
  },
    mounted(){
      this.getSkuData();
    }
}
</script>

<style scoped>
</style>
