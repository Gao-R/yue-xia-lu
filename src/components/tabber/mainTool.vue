<template>
    <div>
        <van-overlay :show="show" >
            <div>
                <svg t="1579581359550" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="2852" width="48" height="48"><path d="M733.3 122.8H290.1L68.5 506.6l221.6 383.8h443.2l221.6-383.8z" fill="#666666" p-id="2853"></path><path d="M733.8 133.3H290.6L69 517.1 290.6 901h443.2l221.6-383.9z" fill="#29ABE2" p-id="2854"></path><path d="M511.5 518.2m-293.1 0a293.1 293.1 0 1 0 586.2 0 293.1 293.1 0 1 0-586.2 0Z" fill="#FFFFFF" p-id="2855"></path><path d="M511.6 518.1m-272.9 0a272.9 272.9 0 1 0 545.8 0 272.9 272.9 0 1 0-545.8 0Z" fill="#29ABE2" p-id="2856"></path><path d="M455.8 364.4v104h-63.6l26 27.5-26 27.3 63.6-3.2v93.3h97.6v46.1l74.7-48.1V364.4H455.8zM501.4 519h-46.7v-50h46.7v50z" fill="#FFFFFF" p-id="2857"></path></svg>
                <span>正在马不停蹄的赶来</span>
            </div>
        </van-overlay>
        <van-pull-refresh v-model="isLoading" @refresh="onRefresh" :head-height='100' pulling-text='你拉我下试试(„ಡωಡ„)'  loosing-text='错了错了，不要拉了X﹏X' >
            <hea></hea>
            <van-tabs v-model="active">
                <van-tab title="图片" >
                    <van-list v-model="loading" :finished="finished" @load="imgLoad" finished-text="没有更多了">
                        <water :data='img_list' tag='image'></water>
                    </van-list>
                </van-tab>
                <van-tab title="视频">
                    <van-list v-model="loading" :finished="finished" @load="mvLoad" finished-text="没有更多了">
                        <water :data='mv_list' tag='video'></water>
                    </van-list>
                </van-tab>
                <van-tab title="小说">
                    <van-list v-model="loading" :finished="finished" @load="xsLoad" finished-text="没有更多了">
                    <fiction :xs='xs_list' tag='main'></fiction>
                    </van-list>
                </van-tab>
                <van-tab title="漫画">
                    <van-list v-model="loading" :finished="finished" @load="ctLoad" finished-text="没有更多了">
                        <cartoon :ct='ct_list' tag='main'></cartoon>
                    </van-list>
                </van-tab>
                <van-tab title="影视">
                    <van-list v-model="loading" :finished="finished" @load="filLoad" finished-text="没有更多了">
                        <films  :fil='fil_list' tag='main'></films>
                    </van-list>
                </van-tab>

            </van-tabs>
            <div class="aa"></div>
        </van-pull-refresh>
        
        
    </div>
</template>
<script>
import water from '../tool/waterfall.vue';
import fiction from '../tool/Fiction.vue';
import films from '../tool/Films.vue';
import cartoon from '../tool/cartoon.vue';
import hea from '../tool/head.vue';
import { Toast } from 'vant';
export default {
    data() {
        return {
            active: 0,
            img_list: [],
            mv_list:[],
            loading: false,
            finished: false,
            sta_img:0,
            sta_mv:0,
            sta_xs:0,
            sta_ct:0,
            sta_fil:0,
            num:20,
            show:true,
            isLoading: false,
            xs_list:[],
            fil_list:[],
            ct_list:[],
        }
    },
    created() {
        this.getmsg()
    },
    methods: {
        getmsg(){
            if (this.$store.state.img==''||this.$store.state.img==[]) {
                //  /getimages/:sta/:num
                this.$axios.get(`${this.$store.state.url}image/getimages/${this.sta_img}/${this.num}/id/DESC`).then((reslut)=>{
                    if(reslut.data.code == 0){
                        this.$store.commit('changeImg',JSON.stringify(reslut.data.msg))
                        this.img_list = reslut.data.msg;
                        this.sta_img += 2;
                    }else if(reslut.data.code == 1){
                        this.show = false;
                        Toast({
                            message: '访问数据时,我们迷路了',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                    this.show = false;
                    Toast({
                        message: '访问数据时,它已经远走高飞了',
                        icon: 'question-o'
                    });
                });
            }else{
                this.img_list = JSON.parse(localStorage.getItem('img'));
                this.sta_img += 2;
            }
            if (this.$store.state.mv==''||this.$store.state.mv==[]) {
                // /video/getvideos/:sta/:num
                this.$axios.get(`${this.$store.state.url}video/getvideos/${this.sta_mv}/${this.num}/id/DESC`).then((reslut)=>{
                    if(reslut.data.code == 0){
                        this.$store.commit('changeMv',JSON.stringify(reslut.data.msg))
                        this.mv_list = reslut.data.msg;
                        this.sta_mv += 2;
                    }else if(reslut.data.code == 1){
                        this.show = false;
                        Toast({
                            message: '访问数据时,我们迷路了',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                    this.show = false;
                        Toast({
                        message: '访问数据时,它已经远走高飞了',
                        icon: 'question-o'
                    });
                })
            }else{
                this.mv_list = JSON.parse(localStorage.getItem('mv'));
                this.sta_mv += 2;
            }
            if (this.$store.state.fict==''||this.$store.state.fict==[]) {
                // /video/getvideos/:sta/:num
                this.$axios.get(`${this.$store.state.url}subsidiary/getart/fiction/${this.sta_xs}/${this.num}`).then((reslut)=>{
                    if(reslut.data.code == 0){
                        this.$store.commit('changeFict',JSON.stringify(reslut.data.msg))
                        this.xs_list = reslut.data.msg;
                        this.sta_xs += 2;
                    }else if(reslut.data.code == 1){
                        this.show = false;
                        Toast({
                            message: '访问数据时,我们迷路了',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                    this.show = false;
                        Toast({
                        message: '访问数据时,它已经远走高飞了',
                        icon: 'question-o'
                    });
                })
            }else{
                this.xs_list = JSON.parse(localStorage.getItem('fict'));
                this.sta_xs += 2;
            }
            if (this.$store.state.cart==''||this.$store.state.cart==[]) {
                // /video/getvideos/:sta/:num
                this.$axios.get(`${this.$store.state.url}subsidiary/getart/cartoon/${this.sta_ct}/${this.num}`).then((reslut)=>{
                    if(reslut.data.code == 0){
                        this.$store.commit('changeCart',JSON.stringify(reslut.data.msg))
                        this.ct_list = reslut.data.msg;
                        this.sta_ct += 2;
                    }else if(reslut.data.code == 1){
                        this.show = false;
                        Toast({
                            message: '访问数据时,我们迷路了',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                    this.show = false;
                        Toast({
                        message: '访问数据时,它已经远走高飞了',
                        icon: 'question-o'
                    });
                })
            }else{
                this.ct_list = JSON.parse(localStorage.getItem('cart'));
                this.sta_ct += 2;
            }
            if (this.$store.state.film==''||this.$store.state.film==[]) {
                // /video/getvideos/:sta/:num
                this.$axios.get(`${this.$store.state.url}subsidiary/getart/films/${this.sta_fil}/${this.num}`).then((reslut)=>{
                    if(reslut.data.code == 0){
                        this.$store.commit('changeFilm',JSON.stringify(reslut.data.msg))
                        this.fil_list = reslut.data.msg;
                        this.sta_fil += 2;
                    }else if(reslut.data.code == 1){
                        this.show = false;
                        Toast({
                            message: '访问数据时,我们迷路了',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                    this.show = false;
                        Toast({
                        message: '访问数据时,它已经远走高飞了',
                        icon: 'question-o'
                    });
                })
            }else{
                this.fil_list = JSON.parse(localStorage.getItem('film'));
                this.sta_fil += 2;
            }
            this.show = false;
        },
        msgs(){
            if (this.active == 0) {
                this.sta_img = 0;
                this.$axios.get(`${this.$store.state.url}image/getimages/${this.sta_img}/${this.num}/id/DESC`).then((reslut)=>{
                    if(reslut.data.code == 0){
                        this.$store.commit('changeImg',JSON.stringify(reslut.data.msg))
                        this.img_list = reslut.data.msg;
                        this.sta_img += 2;
                    }else if(reslut.data.code == 1){
                        Toast({
                            message: '访问数据时,我们迷路了',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                    Toast({
                        message: '访问数据时,它已经远走高飞了',
                        icon: 'question-o'
                    });
                });
            } else if (this.active == 1) {
                this.sta_mv = 0;
                this.$axios.get(`${this.$store.state.url}video/getvideos/${this.sta_mv}/${this.num}/time/DESC`).then((reslut)=>{
                    if(reslut.data.code == 0){
                        this.$store.commit('changeMv',JSON.stringify(reslut.data.msg))
                        this.mv_list = reslut.data.msg;
                        this.sta_mv += 2;
                    }else if(reslut.data.code == 1){
                        Toast({
                            message: '访问数据时,我们迷路了',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                        Toast({
                        message: '访问数据时,它已经远走高飞了',
                        icon: 'question-o'
                    });
                })
            } else if (this.active == 2) {
                this.sta_xs = 0;
                this.$axios.get(`${this.$store.state.url}subsidiary/getart/fiction/${this.sta_mv}/${this.num}`).then((reslut)=>{
                    if(reslut.data.code == 0){
                        if(reslut.data.msg == '') return;
                        this.$store.commit('changeFict',JSON.stringify(reslut.data.msg))
                        this.xs_list = reslut.data.msg;
                        this.sta_xs += 2;
                    }else if(reslut.data.code == 1){
                        Toast({
                            message: '访问数据时,我们迷路了',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                        Toast({
                        message: '访问数据时,它已经远走高飞了',
                        icon: 'question-o'
                    });
                })
            } else if (this.active == 3) {
                this.sta_ct = 0;
                this.$axios.get(`${this.$store.state.url}subsidiary/getart/cartoon/${this.sta_ct}/${this.num}`).then((reslut)=>{
                    if(reslut.data.code == 0){
                        if(reslut.data.msg == '') return;
                        this.$store.commit('changeCart',JSON.stringify(reslut.data.msg))
                        this.ct_list = reslut.data.msg;
                        this.sta_ct += 2;
                    }else if(reslut.data.code == 1){
                        Toast({
                            message: '访问数据时,我们迷路了',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                        Toast({
                        message: '访问数据时,它已经远走高飞了',
                        icon: 'question-o'
                    });
                })
            } else if (this.active == 4) {
                this.sta_fil = 0;
                this.$axios.get(`${this.$store.state.url}subsidiary/getart/films/${this.sta_mv}/${this.num}`).then((reslut)=>{
                    if(reslut.data.code == 0){
                        if(reslut.data.msg == '') return;
                        this.$store.commit('changeFilm',JSON.stringify(reslut.data.msg))
                        this.fil_list = reslut.data.msg;
                        this.sta_fil += 2;
                    }else if(reslut.data.code == 1){
                        Toast({
                            message: '访问数据时,我们迷路了',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                        Toast({
                        message: '访问数据时,它已经远走高飞了',
                        icon: 'question-o'
                    });
                })
            }
        },
        onRefresh() {
            setTimeout(() => {
                this.msgs();
                this.isLoading = false;
            }, 700);
        },
        imgLoad() {
            setTimeout(() => {
                this.$axios.get(`${this.$store.state.url}image/getimages/${this.sta_img}/${this.num}/id/DESC`).then((reslut)=>{
                    if(reslut.data.code == 0){
                        if (reslut.data.msg == '') {
                            return this.finished = true;
                        }
                        this.sta_img += 2;
                        reslut.data.msg.forEach(element => {
                            this.img_list.push(element)
                        });
                        this.loading = false;
                        
                    }else if(reslut.data.code == 1){
                        Toast({
                            message: '加载失败',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                    Toast({
                        message: '访问服务器失败',
                        icon: 'question-o'
                    });
                })
            }, 500);
        },
        mvLoad() {
            setTimeout(() => {
                this.$axios.get(`${this.$store.state.url}video/getvideos/${this.sta_img}/${this.num}/time/DESC`).then((reslut)=>{
                    if(reslut.data.code == 0){
                        if (reslut.data.msg == '') {
                            return this.finished = true;
                        }
                        this.sta_mv += 2;
                        reslut.data.msg.forEach(element => {
                            this.mv_list.push(element)
                        });
                        this.loading = false;
                        
                    }else if(reslut.data.code == 1){
                        Toast({
                            message: '加载失败',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                    Toast({
                        message: '访问服务器失败',
                        icon: 'question-o'
                    });
                })
            }, 500);
        },
        xsLoad() {
            setTimeout(() => {
                this.$axios.get(`${this.$store.state.url}subsidiary/getart/fiction/${this.sta_xs}/${this.num}`).then((reslut)=>{
                    if(reslut.data.code == 0){
                        if (reslut.data.msg == '') {
                            return this.finished = true;
                        }
                        reslut.data.msg.forEach(element => {
                            this.xs_list.push(element)
                        });
                        this.loading = false;
                        
                    }else if(reslut.data.code == 1){
                        Toast({
                            message: '加载失败',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                    Toast({
                        message: '访问服务器失败',
                        icon: 'question-o'
                    });
                })
            }, 500);
        },
        ctLoad() {
            setTimeout(() => {
                this.$axios.get(`${this.$store.state.url}subsidiary/getart/cartoon/${this.sta_ct}/${this.num}`).then((reslut)=>{
                    if(reslut.data.code == 0){
                        if (reslut.data.msg == '') {
                            return this.finished = true;
                        }
                        reslut.data.msg.forEach(element => {
                            this.ct_list.push(element)
                        });
                        this.loading = false;
                        
                    }else if(reslut.data.code == 1){
                        Toast({
                            message: '加载失败',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                    Toast({
                        message: '访问服务器失败',
                        icon: 'question-o'
                    });
                })
            }, 500);
        },
        filLoad() {
            setTimeout(() => {
                this.$axios.get(`${this.$store.state.url}subsidiary/getart/films/${this.sta_fil}/${this.num}`).then((reslut)=>{
                    if(reslut.data.code == 0){
                        if (reslut.data.msg == '') {
                            return this.finished = true;
                        }
                        reslut.data.msg.forEach(element => {
                            this.fil_list.push(element)
                        });
                        this.loading = false;
                        
                    }else if(reslut.data.code == 1){
                        Toast({
                            message: '加载失败',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                    Toast({
                        message: '访问服务器失败',
                        icon: 'question-o'
                    });
                })
            }, 500);
        },
    },
    components:{
        water,
        hea,
        fiction,
        films,
        cartoon,
    }
}
</script>
<style lang="less" scoped>
.van-pull-refresh{
    .aa{
        min-height: 200px;
    }
}
</style>