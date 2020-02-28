// The Vue build version to load with the `import` command
// (runtime-only or standalone) has been set in webpack.base.conf with an alias.
import Vue from 'vue'
import App from './App'
//引入路由
import router from './router'
//引入瀑布流
import waterfall from 'vue-waterfall2'
Vue.use(waterfall)

import Vuex from 'vuex'
Vue.use(Vuex);
import moment from 'moment'; 
moment.locale('zh-cn');   
Vue.filter('dateformat', function(dataStr, pattern = 'YYYY-MM-DD HH:mm:ss') {
  return moment(dataStr).format(pattern)

})

//导入axios
import axios from 'axios';
// axios.defaults.baseURL='http://123.56.254.73/';
// 添加请求拦截器，在请求头中加token
axios.interceptors.request.use(
  config => {
    if(config.url.includes('/user/info')||config.url.includes('/published')){
      if (localStorage.getItem('tokens')) {
        config.headers.token = localStorage.getItem('tokens');
      }
    }
    return config;
  },
  error => {
    return Promise.reject(error);
  });
Vue.prototype.$axios = axios 

import './assets/dist/css/mui.css';
// import './assets/dist/js/mui.min.js';
// import './assets/dist/css/mui.min.css';

import './assets/animate.css'


import VideoPlayer from 'vue-video-player'
import 'vue-video-player/src/custom-theme.css'
import 'video.js/dist/video-js.css'
Vue.use(VideoPlayer)

import hls from 'videojs-contrib-hls'
Vue.use(hls)

Vue.config.productionTip = false
//按需导入 vant
import { Field,Uploader,ActionSheet,PullRefresh,Overlay,Tab,Sticky,Tabs,List,Divider,Skeleton,Toast,Button,Tabbar,TabbarItem,NavBar,Icon,Search,Cell, CellGroup,Grid, GridItem,Image,Lazyload } from 'vant';

Vue.use(Button);
Vue.use(NavBar);
Vue.use(Icon);
Vue.use(Search);
Vue.use(Image);
Vue.use(Toast);
Vue.use(List);
Vue.use(Divider);
Vue.use(Sticky);
Vue.use(Field);
Vue.use(Skeleton);
Vue.use(Overlay);
Vue.use(ActionSheet);
Vue.use(PullRefresh);
Vue.use(Uploader);
Vue.use(Tab).use(Tabs);
Vue.use(Grid).use(GridItem);
Vue.use(Cell).use(CellGroup);
Vue.use(Tabbar).use(TabbarItem);
Vue.use(Lazyload);

const store = new Vuex.Store({
  state: {
    tokens: localStorage.getItem('tokens') ? localStorage.getItem('tokens') : '',
    user: localStorage.getItem('user') ? localStorage.getItem('user') : '',
    time: localStorage.getItem('time') ? localStorage.getItem('time') : '',
    homeimg: localStorage.getItem('homeimg') ? localStorage.getItem('homeimg') : '',
    homemv: localStorage.getItem('homemv') ? localStorage.getItem('homemv') : '',
    img: localStorage.getItem('img') ? localStorage.getItem('img') : '',
    mv: localStorage.getItem('mv') ? localStorage.getItem('mv') : '',
    art: localStorage.getItem('art') ? localStorage.getItem('art') : '',
    fict: localStorage.getItem('fict') ? localStorage.getItem('fict') : '',
    cart: localStorage.getItem('cart') ? localStorage.getItem('cart') : '',
    film: localStorage.getItem('film') ? localStorage.getItem('film') : '',
    userimg: localStorage.getItem('userimg') ? localStorage.getItem('userimg') : '',
    unsermv: localStorage.getItem('unsermv') ? localStorage.getItem('unsermv') : '',
    userart: localStorage.getItem('userart') ? localStorage.getItem('userart') : '',
    url: 'http://123.56.254.73/',
    homeimgs: localStorage.getItem('homeimgs') ? localStorage.getItem('homeimgs') : '',
    userfict: localStorage.getItem('userfict') ? localStorage.getItem('userfict') : '',
    usercart: localStorage.getItem('usercart') ? localStorage.getItem('usercart') : '',
    userfilm: localStorage.getItem('userfilm') ? localStorage.getItem('userfilm') : '',

  },
  mutations: {
    changeToken (state, to) {
      state.token = to.token;
      localStorage.setItem('tokens', to.token);
    },
    changeUser(state, user){
      state.user = user;
      localStorage.setItem('user', user);
    },
    changeTime(state, time){
      state.time = time;
      localStorage.setItem('time', time);
    },
    changeHomeimg(state, homeimg){
      state.homeimg = homeimg;
      localStorage.setItem('homeimg', homeimg);
    },
    changeHomemv(state, homemv){
      state.homemv = homemv;
      localStorage.setItem('homemv', homemv);
    },
    changeImg(state, img){
      state.img = img;
      localStorage.setItem('img', img);
    },
    changeMv(state, mv){
      state.mv = mv;
      localStorage.setItem('mv', mv);
    },
    changeArt(state, art){
      state.art = art;
      localStorage.setItem('art', art);
    },
    changeUserimg(state, userimg){
      state.userimg = userimg;
      localStorage.setItem('userimg', userimg);
    },
    changeUnsermv(state, unsermv){
      state.unsermv = unsermv;
      localStorage.setItem('unsermv', unsermv);
    },
    changeUserart(state, userart){
      state.userart = userart;
      localStorage.setItem('userart', userart);
    },
    changeFict(state, fict){
      state.fict = fict;
      localStorage.setItem('fict', fict);
    },
    changeCart(state, cart){
      state.cart = cart;
      localStorage.setItem('cart', cart);
    },
    changeFilm(state, film){
      state.film = film;
      localStorage.setItem('film', film);
    },
    changeHomeimgs(state, homeimgs){
      state.homeimgs = homeimgs;
      localStorage.setItem('homeimgs', homeimgs);
    },
    changeUserfict(state, userfict){
      state.userfict = userfict;
      localStorage.setItem('userfict', userfict);
    },
    changeUsercart(state, usercart){
      state.usercart = usercart;
      localStorage.setItem('usercart', usercart);
    },
    changeUserfilm(state, userfilm){
      state.userfilm = userfilm;
      localStorage.setItem('userfilm', userfilm);
    },
  }
})

/* eslint-disable no-new */
new Vue({
  el: '#app',
  router,
  components: { App },
  template: '<App/>',
  store,
})
