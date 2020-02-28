<template>
    <div>
        <van-pull-refresh v-model="isLoading" @refresh="onRefresh" :head-height='100' pulling-text='你拉我下试试(„ಡωಡ„)'  loosing-text='错了错了，不要拉了X﹏X' >
            <div class="mui-card">
                <div class="mui-card-header">
                    <van-image round lazy-load alt="图片加载失败"  fit="cover" :src="user_info.head_img"/>
                    <div class="name"><span>{{user_info.user_name}}</span></div>
                </div>
                <div class="mui-card-content">
                    <div class="mui-card-content-inner">
                        <div class="maxmi">{{user_info.mottot}}</div>
                        <van-button v-show="!is_land" icon="arrow-up" block color="linear-gradient(to right, #659ef5, #fe798c)" type="primary" @click="goland">去登陆   landing</van-button>
                        <div class="info" v-show="is_land">
                            <span>Email:    {{user_info.email}}</span>
                            <span>QQ:   {{user_info.qq}}</span>
                            <span>Phone:    {{user_info.cell_phone}}</span>
                        </div>
                    </div>
                </div>
                <div class="mui-card-footer">
                    <div class="er" v-show="is_land">
                        <van-button icon="edit" color="linear-gradient(to right, #659ef5, #fe798c)" type="primary" @click="change">修改资料 data</van-button>
                        <van-button icon="exchange" color="linear-gradient(to right, #659ef5, #fe798c)" type="primary" @click="land">退出登录   exit</van-button>
                    </div>
                    <van-button icon="replay" block color="linear-gradient(to right, #659ef5, #fe798c)" type="primary" @click="cache">清除缓存  cache</van-button>
                </div>
                <div class="uers">
                        <van-tabs v-if="user_info.email" v-model="active">
                            <van-tab title="Image">
                                <water :data='user_img' tag='image'></water>
                            </van-tab>
                            <van-tab title="Mv">
                                <water :data='user_mv' tag='video'></water>
                            </van-tab>
                            <van-tab title="Artcle">
                                <div class="art_wrap">
                                    <router-link v-for="item in user_art" :key="item.id" :to=" `/append/info/${item.id}`" tag="div" class="art">
                                        <div class="art_head">
                                            <van-image lazy-load alt="图片加载失败"  fit="cover" :src="item.img_url"/>
                                        </div>
                                        <div class="art_info">
                                            <h5>{{ item.title }}</h5>
                                            <p>{{ item.lead }}</p>
                                        </div>
                                    </router-link>
                                </div>
                            </van-tab>
                            <van-tab title="Fiction">
                                <fiction :xs='user_fict' tag='user'></fiction>
                            </van-tab>
                            <van-tab title="Cartoon">
                                <cartoon :ct='user_cart' tag='user'></cartoon>
                            </van-tab>
                            <van-tab title="Films">
                                <films :fil='user_film' tag='user'></films>
                            </van-tab>
                        </van-tabs>
                    </div>
            </div>
        </van-pull-refresh>
    </div>
</template>
<script>
import water from '../tool/waterfall.vue';
import fiction from '../tool/Fiction.vue';
import cartoon from '../tool/cartoon.vue';
import films from '../tool/Films.vue';
import { Toast } from 'vant';
export default {
    data() {
        return {
            user_info:{},
            is_land:false,
            user_img:[],
            user_mv:[],
            user_art:[],
            user_fict:[],
            user_cart:[],
            user_film:[],
            active:0,
            isLoading: false,
        }
    },
    created() {
        this.getuser();
        this.getpublic()
    },
    methods: {
        getuser(){
            if (this.$store.state.user == '') {
                // 未登录
                this.user_info.head_img = `${this.$store.state.url}headImgs/head.png`;
                this.user_info.user_name = '未登录哦!';
                this.is_land = false;
            }else{
                this.user_info = JSON.parse(this.$store.state.user);
                this.is_land = true;
            }
        },
        onRefresh() {
            setTimeout(() => {
                this.getuser();
                this.public();
                this.isLoading = false;
            }, 400);
        },
        land(){
            this.$store.commit('changeToken','');
            this.$store.commit('changeUser','');
            this.$store.commit('changeUserimg','');
            this.$store.commit('changeUnsermv','');
            this.$store.commit('changeUserart','');
            this.$store.commit('changeUserfict','');
            this.$store.commit('changeUsercart','');
            this.$store.commit('changeUserfilm','');
            this.$router.push('/land')
        },
        goland(){
            this.$router.push('/land')
        },
        cache(){
            this.$store.commit('changeHomeimg','');
            this.$store.commit('changeHomemv','');
            this.$store.commit('changeImg','');
            this.$store.commit('changeMv','');
            this.$store.commit('changeArt','');
            this.$store.commit('changeFict','');
            this.$store.commit('changeCart','');
            this.$store.commit('changeFilm','');
            this.$store.commit('changeUserimg','');
            this.$store.commit('changeUnsermv','');
            this.$store.commit('changeUserart','');
            this.$store.commit('changeUserfict','');
            this.$store.commit('changeUsercart','');
            this.$store.commit('changeUserfilm','');
            this.$store.commit('changeHomeimgs','');
        },
        change(){
            this.$router.push('/main/change');
        },
        getpublic(){
            if (this.$store.state.user == '') {
               return;
            }else{
                if (this.$store.state.userimg == '') {
                    this.$axios.get(`${this.$store.state.url}user/img/${this.user_info.email}`).then((reslut)=>{
                        if(reslut.data.code == 0){
                        this.user_img = reslut.data.msg;
                        this.$store.commit('changeUserimg',JSON.stringify(reslut.data.msg))
                        }else if(reslut.data.code == 1){
                            Toast({
                                message: '获取用户发表图片失败  Failed to get user to publish picture',
                                icon: 'close'
                            });
                        }
                    }).catch((err)=>{
                        Toast({
                            message: '服务器故障    Server failure',
                            icon: 'question-o'
                        });
                    });
                }else{
                    this.user_img = JSON.parse(this.$store.state.userimg);
                }

                if (this.$store.state.unsermv == '') {
                    this.$axios.get(`${this.$store.state.url}user/mv/${this.user_info.email}`).then((reslut)=>{
                        if(reslut.data.code == 0){
                        this.user_mv = reslut.data.msg;
                        this.$store.commit('changeUnsermv',JSON.stringify(reslut.data.msg))
                        }else if(reslut.data.code == 1){
                            Toast({
                                message: '获取用户发表视频失败  Failed to get user to publish video',
                                icon: 'close'
                            });
                        }
                    }).catch((err)=>{
                        Toast({
                            message: '服务器故障    Server failure',
                            icon: 'question-o'
                        });
                    });
                }else{
                    this.user_mv = JSON.parse(this.$store.state.unsermv);
                }

                if (this.$store.state.userart == '') {
                    this.$axios.get(`${this.$store.state.url}user/artcle/${this.user_info.email}`).then((reslut)=>{
                        if(reslut.data.code == 0){
                        this.user_art = reslut.data.msg;
                        this.$store.commit('changeUserart',JSON.stringify(reslut.data.msg))
                        }else if(reslut.data.code == 1){
                            Toast({
                                message: '获取用户发表文章失败  Failed to get the user to publish the article',
                                icon: 'close'
                            });
                        }
                    }).catch((err)=>{
                        Toast({
                            message: '服务器故障    Server failure',
                            icon: 'question-o'
                        });
                    });
                }else{
                    this.user_art = JSON.parse(this.$store.state.userart);
                }
                
                if (this.$store.state.userfict == '') {
                    this.$axios({
                        method:'get',
                        url:`${this.$store.state.url}user/fict/${this.user_info.email}`,
                    }).then((reslut)=>{
                        if(reslut.data.code == 0){
                        this.user_fict = reslut.data.msg;
                        this.$store.commit('changeUserfict',JSON.stringify(reslut.data.msg))
                        }else if(reslut.data.code == 1){
                            Toast({
                                message: '获取天书阁失败    Failed to obtain tianshu pavilion',
                                icon: 'close'
                            });
                        }
                    }).catch((err)=>{
                        Toast({
                            message: '服务器故障    Server failure',
                            icon: 'question-o'
                        });
                    });
                }else{
                    this.user_fict = JSON.parse(this.$store.state.userfict);
                }
                
                if (this.$store.state.usercart == '') {
                    this.$axios({
                        method:'get',
                        url:`${this.$store.state.url}user/cart/${this.user_info.email}`,
                    }).then((reslut)=>{
                        if(reslut.data.code == 0){
                        this.user_cart = reslut.data.msg;
                        this.$store.commit('changeUsercart',JSON.stringify(reslut.data.msg))
                        }else if(reslut.data.code == 1){
                            Toast({
                                message: '获取漫天阁失败    Get all over the sky failed',
                                icon: 'close'
                            });
                        }
                    }).catch((err)=>{
                        Toast({
                            message: '服务器故障    Server failure',
                            icon: 'question-o'
                        });
                    });
                }else{
                    this.user_cart = JSON.parse(this.$store.state.usercart);
                }

                if (this.$store.state.userfilm == '') {
                    this.$axios({
                        method:'get',
                        url:`${this.$store.state.url}user/film/${this.user_info.email}`,
                    }).then((reslut)=>{
                        if(reslut.data.code == 0){
                        this.user_cart = reslut.data.msg;
                        this.$store.commit('changeUserfilm',JSON.stringify(reslut.data.msg))
                        }else if(reslut.data.code == 1){
                            Toast({
                                message: '获取暗影阁失败    Failed to gain shadow pavilion',
                                icon: 'close'
                            });
                        }
                    }).catch((err)=>{
                        Toast({
                            message: '服务器故障    Server failure',
                            icon: 'question-o'
                        });
                    });
                }else{
                    this.user_film = JSON.parse(this.$store.state.userfilm);
                }
            }
        },
        public(){
            if (this.$store.state.user == '') {
               return;
            }else{
                this.$axios.get(`${this.$store.state.url}user/img/${this.user_info.email}`).then((reslut)=>{
                    if(reslut.data.code == 0){
                    this.user_img = reslut.data.msg;
                    this.$store.commit('changeUserimg',JSON.stringify(reslut.data.msg))
                    }else if(reslut.data.code == 1){
                        Toast({
                            message: '获取用户发表图片失败  Failed to get user to publish picture',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                    Toast({
                        message: '服务器故障    Server failure',
                        icon: 'question-o'
                    });
                });
                this.$axios.get(`${this.$store.state.url}user/mv/${this.user_info.email}`).then((reslut)=>{
                    if(reslut.data.code == 0){
                    this.user_mv = reslut.data.msg;
                    this.$store.commit('changeUnsermv',JSON.stringify(reslut.data.msg))
                    }else if(reslut.data.code == 1){
                        Toast({
                            message: '获取用户发表视频失败  Failed to get user to publish video',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                    Toast({
                        message: '服务器故障    Server failure',
                        icon: 'question-o'
                    });
                });
                this.$axios.get(`${this.$store.state.url}user/artcle/${this.user_info.email}`).then((reslut)=>{
                    if(reslut.data.code == 0){
                    this.user_art = reslut.data.msg;
                    this.$store.commit('changeUserart',JSON.stringify(reslut.data.msg))
                    }else if(reslut.data.code == 1){
                        Toast({
                            message: '获取用户发表文章失败  Failed to get the user to publish the article',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                    Toast({
                        message: '服务器故障    Server failure',
                        icon: 'question-o'
                    });
                });
                this.$axios({
                    method:'get',
                    url:`${this.$store.state.url}user/fict/${this.user_info.email}`,
                }).then((reslut)=>{
                    if(reslut.data.code == 0){
                    this.user_fict = reslut.data.msg;
                    this.$store.commit('changeUserfict',JSON.stringify(reslut.data.msg))
                    }else if(reslut.data.code == 1){
                        Toast({
                            message: '获取天书阁失败    Failed to obtain tianshu pavilion',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                    Toast({
                        message: '服务器故障    Server failure',
                        icon: 'question-o'
                    });
                });
                this.$axios({
                    method:'get',
                    url:`${this.$store.state.url}user/cart/${this.user_info.email}`,
                }).then((reslut)=>{
                    if(reslut.data.code == 0){
                    this.user_cart = reslut.data.msg;
                    this.$store.commit('changeUsercart',JSON.stringify(reslut.data.msg))
                    }else if(reslut.data.code == 1){
                        Toast({
                            message: '获取漫天阁失败    Get all over the sky failed',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                    Toast({
                        message: '服务器故障    Server failure',
                        icon: 'question-o'
                    });
                });
                this.$axios({
                    method:'get',
                    url:`${this.$store.state.url}user/film/${this.user_info.email}`,
                }).then((reslut)=>{
                    if(reslut.data.code == 0){
                    this.user_film = reslut.data.msg;
                    this.$store.commit('changeUserfilm',JSON.stringify(reslut.data.msg))
                    }else if(reslut.data.code == 1){
                        Toast({
                            message: '获取暗影阁失败    Failed to gain shadow pavilion',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                    Toast({
                        message: '服务器故障    Server failure',
                        icon: 'question-o'
                    });
                });
            }
        },
        
    },
    components:{
        water,
        fiction,
        films,
        cartoon,
    }
}
</script>
<style lang="less" scoped>
.mui-card{
    margin: 0;
    padding: 20px;
    .mui-card-header{
        display: flex;
        justify-content: space-between;
        .van-image{
            flex: 6;
        }
        .name{
            flex: 9;
            text-align: center;
            span{
                font-size: 22px;
                letter-spacing: 1px;
                font-weight: 600;
                font-family: ruizi;
            }
        }
    }
    .mui-card-content-inner{
        .maxmi{
            text-align: center;
            font-size: 18px;
            color: #282828;
             font-family: ruizi;
        }
        .info{
            display: flex;
            flex-direction: column;
            span{
                font-size: 16px;
                margin: 5px 0;
            }
        }
    }
    .mui-card-footer{
        display: flex;
        flex-direction: column;
        .er{
            width: 100%;
            display: flex;
            justify-content: space-between;
            margin-bottom: 5%;
        }
    }
    .uers{
        .art_wrap{
            .art{
                display: flex;
                justify-content: center;
                // border: .5px solid rgb(87, 72, 72);
                margin: 10px 0;
                .art_head{
                    width: 25%;
                    flex:5;
                    display: flex;
                    justify-content: center;
                    padding: 5px;
                }
                .art_info{
                    width: 65%;
                    flex: 10;
                    display: flex;
                    flex-direction: column;
                    justify-content: space-around;
                    overflow: hidden;
                    margin-left: 3%;
                    h5{
                        color: #282828;
                        font-weight: 700;
                        font-size: 18px;
                        text-align: center;
                        width: 100%;
                        text-overflow: ellipsis;
                        overflow: hidden;
                        white-space: nowrap;
                    }
                    p{
                        display: block;
                        width: 100%;
                        text-overflow: ellipsis;
                        overflow: hidden;
                        white-space: nowrap;
                        color: #2e2f3e;
                    }
                }
            }
        }
    }
}
</style>