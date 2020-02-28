<template>
  <div id="app">
    <div class="mai"><router-view></router-view></div>
    <!-- 底部tab栏 -->
  <van-tabbar v-model="active">
    <van-tabbar-item to="/home">
      <svg t="1578210366174" slot="icon" slot-scope="props" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="16779" width="32" height="32"><path d="M946.5 505L560.1 118.8l-25.9-25.9c-12.3-12.2-32.1-12.2-44.4 0L77.5 505c-12.3 12.3-18.9 28.6-18.8 46 0.4 35.2 29.7 63.3 64.9 63.3h42.5V940h691.8V614.3h43.4c17.1 0 33.2-6.7 45.3-18.8 12.1-12.1 18.7-28.2 18.7-45.3 0-17-6.7-33.1-18.8-45.2zM568 868H456V664h112v204z m217.9-325.7V868H632V640c0-22.1-17.9-40-40-40H432c-22.1 0-40 17.9-40 40v228H238.1V542.3h-96l370-369.7 23.1 23.1L882 542.3h-96.1z" p-id="16780" :fill="props.active?'#1296db':'#cdcdcd'"></path></svg>    </van-tabbar-item>
    <van-tabbar-item to="/main">
      <svg t="1578209011331" slot="icon" slot-scope="props" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="14918" width="32" height="32"><path d="M928 160H96c-17.7 0-32 14.3-32 32v640c0 17.7 14.3 32 32 32h832c17.7 0 32-14.3 32-32V192c0-17.7-14.3-32-32-32z m-40 632H136v-39.9l138.5-164.3 150.1 178L658.1 489 888 761.6V792z m0-129.8L664.2 396.8c-3.2-3.8-9-3.8-12.2 0L424.6 666.4l-144-170.7c-3.2-3.8-9-3.8-12.2 0L136 652.7V232h752v430.2z" p-id="14919" :fill="props.active?'#1296db':'#cdcdcd'"></path><path d="M304 456c48.6 0 88-39.4 88-88s-39.4-88-88-88-88 39.4-88 88 39.4 88 88 88z m0-116c15.5 0 28 12.5 28 28s-12.5 28-28 28-28-12.5-28-28 12.5-28 28-28z" p-id="14920" :fill="props.active?'#1296db':'#cdcdcd'"></path></svg>
    </van-tabbar-item>
    <van-tabbar-item to="/publish">
      <svg t="1578210509039" slot="icon" slot-scope="props" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="30345" width="32" height="32"><path d="M696 480H544V328c0-4.4-3.6-8-8-8h-48c-4.4 0-8 3.6-8 8v152H328c-4.4 0-8 3.6-8 8v48c0 4.4 3.6 8 8 8h152v152c0 4.4 3.6 8 8 8h48c4.4 0 8-3.6 8-8V544h152c4.4 0 8-3.6 8-8v-48c0-4.4-3.6-8-8-8z" p-id="30346" :fill="props.active?'#1296db':'#cdcdcd'"></path><path d="M512 64C264.6 64 64 264.6 64 512s200.6 448 448 448 448-200.6 448-448S759.4 64 512 64z m0 820c-205.4 0-372-166.6-372-372s166.6-372 372-372 372 166.6 372 372-166.6 372-372 372z" p-id="30347" :fill="props.active?'#1296db':'#cdcdcd'"></path></svg>
    </van-tabbar-item>
    <van-tabbar-item to="/append">
    <svg t="1580140602412" slot="icon" slot-scope="props" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="14621" width="32" height="32"><path d="M832 64H192c-17.7 0-32 14.3-32 32v832c0 17.7 14.3 32 32 32h640c17.7 0 32-14.3 32-32V96c0-17.7-14.3-32-32-32z m-260 72h96v209.9L621.5 312 572 347.4V136z m220 752H232V136h280v296.9c0 3.3 1 6.6 3 9.3 5.1 7.2 15.1 8.9 22.3 3.7l83.8-59.9 81.4 59.4c2.7 2 6 3.1 9.4 3.1 8.8 0 16-7.2 16-16V136h64v752z" p-id="14622" :fill="props.active?'#1296db':'#cdcdcd'"></path></svg>
    </van-tabbar-item>
    <van-tabbar-item to="/user">
      <svg t="1578210114663" slot="icon" slot-scope="props" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="16305" width="32" height="32"><path d="M858.5 763.6c-18.9-44.8-46.1-85-80.6-119.5-34.5-34.5-74.7-61.6-119.5-80.6-0.4-0.2-0.8-0.3-1.2-0.5C719.5 518 760 444.7 760 362c0-137-111-248-248-248S264 225 264 362c0 82.7 40.5 156 102.8 201.1-0.4 0.2-0.8 0.3-1.2 0.5-44.8 18.9-85 46-119.5 80.6-34.5 34.5-61.6 74.7-80.6 119.5C146.9 807.5 137 854 136 901.8c-0.1 4.5 3.5 8.2 8 8.2h60c4.4 0 7.9-3.5 8-7.8 2-77.2 33-149.5 87.8-204.3 56.7-56.7 132-87.9 212.2-87.9s155.5 31.2 212.2 87.9C779 752.7 810 825 812 902.2c0.1 4.4 3.6 7.8 8 7.8h60c4.5 0 8.1-3.7 8-8.2-1-47.8-10.9-94.3-29.5-138.2zM512 534c-45.9 0-89.1-17.9-121.6-50.4S340 407.9 340 362c0-45.9 17.9-89.1 50.4-121.6S466.1 190 512 190s89.1 17.9 121.6 50.4S684 316.1 684 362c0 45.9-17.9 89.1-50.4 121.6S557.9 534 512 534z" p-id="16306" :fill="props.active?'#1296db':'#cdcdcd'"></path></svg>    </van-tabbar-item>
  </van-tabbar>
  </div>
</template>

<script>
import { Toast } from 'vant';
export default {
  data() {
    return {
      active: 0,
    }
  },
  created() {
    this.getuserinfo()
    this.getTime()
  },
  methods: {
    //JSON.stringify     parse
    getuserinfo(){
      if (this.$store.state.token == '') {
        return this.$router.push('/land')
      }
    },
    getTime(){
      var datas = new Date;
      var time = datas.getUTCDay()
      if (this.$store.state.time == time) {
        return;
      }else{
        this.$store.commit('changeTime',time);
        this.$store.commit('changeHomeimg','');
        this.$store.commit('changeHomemv','');
        this.$store.commit('changeImg','');
        this.$store.commit('changeMv','');
        // this.$store.commit('changeTime','');
        // this.$store.commit('changeTime','');
      }
    }
  },
}
</script>

<style lang="less">
@font-face {
  font-family: pf;
  src: url('./assets/ttf/pf.ttf');
}
@font-face {
  font-family: ink;
  src: url('./assets/ttf/inkfree.ttf');
}
@font-face {
  font-family: ruizi;
  src: url('./assets/ttf/ruizi.ttf');
}
@font-face {
    font-family: fa;
    src: url('./assets/ttf/aa.ttf');
}
*{
  box-sizing: border-box;
  font-family: pf;
}
.mai{
  margin-bottom: 55px;
}
.van-overlay{
    div{
      display: flex;
      align-items: center;
      justify-content: center;
      height: 100%;
      text-align: center;
      color: #fff;
    }
}
</style>