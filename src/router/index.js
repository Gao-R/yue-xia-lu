import Vue from 'vue'
import Router from 'vue-router'
// component
import home from '@/components/tabber/Home';
import main from '@/components/tabber/mainTool';
import publish from '@/components/tabber/publish';
import append from '@/components/tabber/appendTool';
import user from '@/components/tabber/User';

import image from '@/components/main/image';
import video from '@/components/main/video';
import book from '@/components/main/book';
import films from '@/components/main/Films';
import artinfo from '@/components/main/artinfo';
import cartoon from '@/components/main/cartoon';
import seach from '@/components/main/seach';
import land from '@/components/main/land';
import changeUser from '@/components/main/changeUser';

import chapter from '@/components/info/chapter';
import movie from '@/components/info/movie';
import caricature from '@/components/info/caricature';

Vue.use(Router)
const router = new Router({
  routes: [
    {path: '/', redirect: '/home' },//根目录
    {path: '/home',component: home,},//首页
    {path: '/main',component: main,},//主要功能块
    //包含 图片 视频 音乐
    {path: '/main/image/:id',component: image,},//图片详情
    {path: '/main/video/:id',component: video,},//小视频详情
    {path: '/main/book',component: book,},//小说详情
    {path: '/main/films',component: films,},//电影详情
    {path: '/main/cartoon',component: cartoon,},//漫画详情
    {path: '/main/seach',component: seach,},//搜索
    {path: '/land',component: land,},//登陆
    {path: '/main/change',component: changeUser,},//修改资料

    
    {path: '/main/book/info',component: chapter,},//小说章节
    {path: '/main/films/info',component: movie,},//电影播放
    {path: '/main/cartoon/info',component: caricature,},//漫画章节


    {path: '/publish',component: publish,},//发表
    {path: '/append',component: append,},//音乐

    {path: '/append/info/:id',component: artinfo,},//
    //包含 树洞 匿名聊天室 （小说）
    {path: '/user',component: user,},//用户页
  ]
});
router.beforeEach((to, from, next) => {
  if (to.path == '/main/land') {
    next();
  } else {
    let token = localStorage.getItem('tokens');
 
    if (token == 'null' || token == '') {
      next('/main/land');
    } else {
      next();
    }
  }
});

export default router;

