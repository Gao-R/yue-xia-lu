<template>
    <div>
        <van-overlay :show="show" >
            <div>
                <svg t="1579581387546" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="3633" width="48" height="48"><path d="M857.4272 644.2944a32.0384 32.0384 0 0 0 32.1344-31.9424V318.912l-9.6768-9.3952c-23.0016-22.336-65.0304-64.4352-109.5296-109.0048-50.4832-50.56-102.688-102.848-128.448-127.5648L632.5696 64H275.84A141.184 141.184 0 0 0 134.4 204.5888v614.816A141.1904 141.1904 0 0 0 275.84 960h472.32a141.184 141.184 0 0 0 141.44-140.608v-34.56a32.1344 32.1344 0 0 0-64.2624 0v34.56a77.0368 77.0368 0 0 1-77.1776 76.7296H275.84a77.0304 77.0304 0 0 1-77.1712-76.7168V204.5888A77.0304 77.0304 0 0 1 275.84 127.872h296.1344v175.68a68.4416 68.4416 0 0 0 68.5696 68.16h184.7552v240.64a32.0384 32.0384 0 0 0 32.128 31.9424zM636.2432 303.552V157.1328c25.6768 25.4592 57.408 57.2416 88.5056 88.384 22.0544 22.0928 43.4112 43.4816 62.2912 62.304h-146.496a4.2944 4.2944 0 0 1-4.3008-4.2688z" fill="#FB3F50" p-id="3634"></path><path d="M497.6064 517.9648H320.2816a31.8144 31.8144 0 1 1 0-63.6224h177.3248a31.8144 31.8144 0 1 1 0 63.6224z m174.08 141.024H320.2816a31.8144 31.8144 0 1 1 0-63.616h351.424a31.8144 31.8144 0 1 1 0 63.616z m0 141.0304H320.2816a31.8144 31.8144 0 1 1 0-63.6224h351.424a31.8144 31.8144 0 1 1 0 63.6032z" fill="#FFCA1E" p-id="3635"></path></svg>
                <span>文章正在加载</span>
            </div>
        </van-overlay>
        <van-pull-refresh v-model="isLoading" @refresh="onRefresh" :head-height='100' pulling-text='你拉我下试试(„ಡωಡ„)'  loosing-text='错了错了，不要拉了X﹏X' >
            <div class="mui-card">
                <div class="mui-card-header">快看看小伙伴有哪些趣事吧</div>
                <div class="mui-card-content">
                    <div class="mui-card-content-inner">
                        <div class="art_wrap">
                            <van-list v-model="loading" :finished="finished" @load="Load" finished-text="到底了">
                                <router-link v-for="item in list" :key="item.id" :to=" `/append/info/${item.id}`" tag="div" class="art">
                                    <div class="art_head">
                                        <van-image lazy-load alt="图片加载失败"  fit="cover" :src="item.img_url"/>
                                    </div>
                                    <div class="art_info">
                                        <h5>{{ item.title }}</h5>
                                        <p>{{ item.lead }}</p>
                                    </div>
                                </router-link>
                            </van-list>
                        </div>
                    </div>
                </div>
                <div class="mui-card-footer">End</div>
            </div>
            <div class="aa"></div>
        </van-pull-refresh>
    </div>
</template>
<script>
export default {
    data() {
        return {
            list:[],
            sta:0,
            num:20,
            show:true,
            isLoading: false,
            loading: false,
            finished: false,
        }
    },
    created() {
        this.getArtcle();
    },
    methods: {
        getArtcle(){
             if (this.$store.state.art=='') {
                this.$axios.get(`${this.$store.state.url}artcle/getart/${this.sta}/${this.num}`).then((reslut)=>{
                    if(reslut.data.code == 0){
                        this.sta_img += 2;
                        this.list = reslut.data.msg;
                        this.$store.commit('changeArt',JSON.stringify(reslut.data.msg))
                        this.show = false;
                    }else{
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
                 this.list = JSON.parse(localStorage.getItem('art'));
                this.sta += 2;
                this.show = false;
             }
             
        },
        Load() {
            if (this.sta != 0) {
                setTimeout(() => {
                    this.$axios.get(`${this.$store.state.url}artcle/getart/${this.sta}/${this.num}`).then((reslut)=>{
                        if(reslut.data.code == 0){
                            if (reslut.data.msg == '') {
                                return this.finished = true;
                            }
                            this.sta += 2;
                            this.list.push(reslut.data.msg);
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
            } else{
                return;
            }
        },
        msgs(){
            this.sta = 0;
            this.$axios.get(`${this.$store.state.url}artcle/getart/${this.sta}/${this.num}`).then((reslut)=>{
                if(reslut.data.code == 0){
                    this.sta_img += 2;
                    this.list = reslut.data.msg;
                    this.$store.commit('changeArt',JSON.stringify(reslut.data.msg))
                }else{
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
        },
        onRefresh() {
            setTimeout(() => {
                this.msgs();
                this.isLoading = false;
            }, 400);
        },
    },
    components:{
    }
}
</script>
<style lang="less" scoped>
.mui-card{
    margin: 0;
    padding: 10px;
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
    .mui-card-content-inner{
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
.aa{
    min-height: 200px;
}
</style>


