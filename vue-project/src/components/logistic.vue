<template>
  <div class="logistic contain">
    <h1 class="left title">logistic</h1>

    <div>

    </div>
  </div>
</template>

<script>
export default {
  name: 'logistic',
  data () {
    return {
    }
  },
  methods:{
  },
  mounted(){
    this.$http({
        url:'/home/logistics/index'
    }).then(res=>{
        console.log(res)
    })
  }
}
</script>

<!-- Add "scoped" attribute to limit CSS to this component only -->
<style scoped>
  .logistic .title{
    font-size: 1.5em;
    margin:20px;
  }
</style>
