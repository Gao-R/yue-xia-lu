<template>
    <div>
        <van-overlay :show="over" >
            <div>
                <svg t="1578744634440" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="572" width="48" height="48"><path d="M512 1024C230.4 1024 0 793.6 0 512S230.4 0 512 0s512 230.4 512 512-230.4 512-512 512z" fill="#dbdbdb" p-id="573" data-spm-anchor-id="a313x.7781069.0.i1" class=""></path><path d="M1024 512c0-31.424-3.016-62.16-8.512-92.064l-477-137.952-27.32-2.68s-172.608-5.376-242.448 178.64c-5.976 15.736 1.72 33.76-8.216 40.296-29.816 19.624-92.072 14.784-91.752 41.64 0.64 52.848 104.08 69.848 104.08 69.848l32.864 48.616 189.648 365.224c5.544 0.184 11.072 0.432 16.656 0.432 281.6 0 512-230.4 512-512z" fill="#bfbfbf" p-id="574" data-spm-anchor-id="a313x.7781069.0.i0" class=""></path><path d="M733.608 523.88c0 130.912-106.12 237.04-237.04 237.04-130.912 0-237.04-106.128-237.04-237.04s106.128-237.04 237.04-237.04c130.92 0 237.04 106.128 237.04 237.04" fill="#EC6646" p-id="575"></path><path d="M690.848 389.008c-42.616-62.944-114.68-104.312-196.416-104.312-82.16 0-154.544 41.808-197.072 105.304 125.2 40.56 320.944 19.648 393.488-0.992M609.144 672.656c-50.984 6.032-102.424 8.264-153.728 6-53.352-2.352-105.064-13.968-157.888-20.648 42.552 63.352 114.848 105.056 196.896 105.056 81.208 0 152.848-40.848 195.56-103.104-26.768 5.128-53.704 9.48-80.84 12.696" fill="#F4A090" p-id="576"></path><path d="M266.832 595.576a6.07 6.07 0 0 1-5.84-4.408c-17.976-62.56-10.504-128.384 21.024-185.336 31.528-56.944 83.344-98.216 145.912-116.184 35.936-10.328 72.688-12.312 109.264-5.896a6.092 6.092 0 0 1 4.936 7.048c-0.584 3.312-3.72 5.488-7.048 4.936-34.712-6.104-69.632-4.224-103.8 5.592-59.44 17.072-108.672 56.28-138.64 110.384-29.952 54.112-37.048 116.648-19.976 176.096a6.06 6.06 0 0 1-4.16 7.512c-0.56 0.184-1.12 0.256-1.672 0.256M495.416 767.56c-77.416 0-152.12-36.968-198.576-102.016a6.1 6.1 0 0 1 1.416-8.488 6.092 6.092 0 0 1 8.488 1.416c56.864 79.64 158.288 114.944 252.416 87.952 48.576-13.96 90.32-42.6 120.704-82.8 2.024-2.672 5.848-3.224 8.52-1.192a6.086 6.086 0 0 1 1.192 8.52c-31.992 42.328-75.92 72.464-127.064 87.152a242.46 242.46 0 0 1-67.096 9.456M711.056 612.952c-0.328 0.944-0.136 1.192 0.328 1.152 1.792-0.92 3.744-1.496 5.752-1.512 1.216-0.008 2.432-0.072 3.648-0.112-3.016 0.088-0.344-0.04 0.488-0.184h0.008c0.04-0.024 0.096-0.056 0.136-0.088 0-0.128 0.024-0.192 0.016-0.336 2.512 0 3.176-5.576 4.048-8.088 16.592-47.656 17.96-98.552 3.984-147.2-14.704-51.176-44.864-95.128-87.232-127.112a6.074 6.074 0 0 0-8.512 1.192 6.072 6.072 0 0 0 1.184 8.512c40.248 30.384 68.904 72.136 82.872 120.752 13.272 46.248 9.04 107.768-6.72 153.024" fill="#474341" p-id="577"></path><path d="M494.472 399.448c-66.808 0-130.12-7.104-183.072-20.552a4.252 4.252 0 0 1-3.08-5.168c0.584-2.272 2.888-3.672 5.168-3.08 52.288 13.272 114.864 20.288 180.976 20.288 66.28 0 129.008-7.056 181.408-20.4 2.32-0.6 4.6 0.8 5.168 3.072a4.256 4.256 0 0 1-3.072 5.176c-53.056 13.512-116.52 20.664-183.496 20.664M493.816 431.528c-75.064 0-146.168-6.624-205.632-19.144a4.262 4.262 0 0 1-3.288-5.048c0.488-2.304 2.696-3.736 5.04-3.288 58.888 12.4 129.384 18.968 203.872 18.968 74.688 0 145.352-6.592 204.344-19.064a4.26 4.26 0 0 1 1.76 8.336c-59.56 12.592-130.824 19.24-206.096 19.24M496.92 533.84c-85.096 0-165.736-6.608-233.216-19.128a4.244 4.244 0 0 1-3.4-4.96 4.24 4.24 0 0 1 4.96-3.4c66.968 12.416 147.072 18.984 231.656 18.984 84.808 0 165.096-6.592 232.192-19.08a4.266 4.266 0 0 1 4.96 3.4 4.238 4.238 0 0 1-3.4 4.96c-67.592 12.584-148.424 19.224-233.752 19.224M340.776 562.752c-0.184 0-0.36-0.008-0.544-0.032-20.488-2.6-40.264-5.736-58.776-9.312a4.268 4.268 0 0 1-3.368-5c0.44-2.296 2.688-3.792 4.992-3.36 18.312 3.552 37.904 6.648 58.216 9.224a4.26 4.26 0 0 1 3.688 4.76 4.252 4.252 0 0 1-4.208 3.72M510.312 573.312c-49.28 0-99.672-2.768-150.6-8.296a4.246 4.246 0 0 1-3.768-4.688c0.248-2.344 2.424-4.072 4.688-3.776 78.128 8.488 154.992 10.416 228.432 5.808 2.64-0.136 4.368 1.648 4.52 3.984a4.26 4.26 0 0 1-3.984 4.52 1267.888 1267.888 0 0 1-79.288 2.448M661.656 563.984a4.264 4.264 0 0 1-4.216-3.712 4.252 4.252 0 0 1 3.68-4.768 1051.322 1051.322 0 0 0 65.88-10.56c2.344-0.4 4.552 1.064 5 3.368a4.266 4.266 0 0 1-3.368 4.992 1065.4 1065.4 0 0 1-66.416 10.648 4.466 4.466 0 0 1-0.56 0.032M395.984 505.856c-0.088 0-0.176 0-0.264-0.008-44.84-2.744-87.632-9.216-127.2-19.208a4.26 4.26 0 0 1-3.096-5.16c0.592-2.28 2.936-3.688 5.176-3.088 39.064 9.864 81.328 16.24 125.64 18.968a4.254 4.254 0 0 1-0.256 8.496M465.176 367.264a4.26 4.26 0 0 1-4.256-4.232 4.26 4.26 0 0 1 4.232-4.28 968.548 968.548 0 0 0 60.888-2.256c2.32-0.2 4.376 1.6 4.544 3.952a4.26 4.26 0 0 1-3.952 4.544 979.488 979.488 0 0 1-61.416 2.272h-0.04zM547.576 363.264a4.254 4.254 0 0 1-4.232-3.856 4.272 4.272 0 0 1 3.84-4.64c36.384-3.44 68.872-8.88 99.328-16.6 2.312-0.584 4.6 0.8 5.168 3.08a4.24 4.24 0 0 1-3.08 5.168c-30.888 7.848-63.8 13.352-100.616 16.832a6.69 6.69 0 0 1-0.408 0.016M496.08 726.848c-58.656 0-114.248-7.12-160.752-20.584a4.262 4.262 0 0 1-2.912-5.272c0.656-2.264 3.032-3.584 5.272-2.912 45.744 13.248 100.52 20.256 158.384 20.256 58.04 0 112.928-7.04 158.744-20.368a4.23 4.23 0 0 1 5.272 2.904 4.256 4.256 0 0 1-2.896 5.272c-46.568 13.552-102.288 20.704-161.112 20.704M453.128 668.032c-0.048 0-0.104 0-0.152-0.008-109.616-2.664-210.848-16.968-277.768-39.224a6.106 6.106 0 0 1-3.856-7.696 6.1 6.1 0 0 1 7.688-3.856c65.816 21.912 165.776 35.992 274.232 38.632a6.072 6.072 0 0 1 5.928 6.224 6.07 6.07 0 0 1-6.072 5.928M601.472 675.776a6.072 6.072 0 0 1-6.032-5.432 6.06 6.06 0 0 1 5.384-6.696c59.784-6.504 112.656-16.752 152.896-29.648 3.184-1.064 6.608 0.728 7.64 3.936a6.072 6.072 0 0 1-3.936 7.64c-41 13.136-94.696 23.56-155.296 30.144-0.216 0.04-0.44 0.056-0.656 0.056M816.088 618.44a6.06 6.06 0 0 1-5-2.616 6.078 6.078 0 0 1 1.528-8.464c13.768-9.568 20.744-19.232 20.744-28.712 0-20.984-34.52-42.808-94.704-59.888a6.074 6.074 0 0 1-4.192-7.512 6.072 6.072 0 0 1 7.504-4.192c47.24 13.4 103.56 36.696 103.56 71.584 0 13.696-8.736 26.712-25.976 38.696a5.972 5.972 0 0 1-3.464 1.104" fill="#474341" p-id="578"></path><path d="M520.144 646.104a1322 1322 0 0 1-50.472-1.008c-83.648-3.2-150.928-12.592-211.768-29.536l-6.32-1.728c-30.592-8.264-87.52-23.64-93.736-58-7.696-42.456 66.776-56.536 94.808-61.84l3.344-0.64c3.224-0.656 6.488 1.528 7.128 4.824a6.088 6.088 0 0 1-4.824 7.12l-3.376 0.64c-22.416 4.24-90.64 17.144-85.096 47.728 4.84 26.776 58.952 41.408 84.936 48.424l6.416 1.752c59.896 16.688 126.296 25.928 208.968 29.096 81.96 3.112 146.608-1.04 203.464-13.096l4.496-0.944c24.2-5.008 74.568-15.448 77.128-41.96 0.32-3.328 3.24-5.912 6.64-5.464a6.074 6.074 0 0 1 5.464 6.64c-3.416 35.424-57.632 46.664-86.76 52.696l-4.432 0.928c-45.632 9.68-96.064 14.368-156.008 14.368" fill="#474341" p-id="579"></path><path d="M237.28 406.328a16.734 16.734 0 0 1-16.736 16.736c-9.248 0-16.736-7.488-16.736-16.736a16.734 16.734 0 1 1 33.472 0" fill="#EC6646" p-id="580"></path><path d="M220.544 429.152c-12.576 0-22.816-10.232-22.816-22.816 0-12.592 10.24-22.832 22.816-22.832 12.576 0 22.816 10.24 22.816 22.832 0 12.576-10.24 22.816-22.816 22.816m0-33.48a10.658 10.658 0 0 0 0 21.312 10.658 10.658 0 0 0 0-21.312" fill="#474341" p-id="581"></path><path d="M815.512 631.856c0 15.248-12.368 27.616-27.616 27.616s-27.608-12.368-27.608-27.616 12.36-27.616 27.608-27.616 27.616 12.368 27.616 27.616" fill="#DD9D00" p-id="582"></path><path d="M787.896 665.552c-18.576 0-33.696-15.12-33.696-33.696 0-18.584 15.12-33.704 33.696-33.704s33.696 15.12 33.696 33.704c0 18.576-15.12 33.696-33.696 33.696m0-55.232c-11.872 0-21.528 9.664-21.528 21.536s9.648 21.528 21.528 21.528c11.872 0 21.528-9.648 21.528-21.528 0-11.872-9.648-21.536-21.528-21.536" fill="#474341" p-id="583"></path><path d="M684.976 458.632a16.734 16.734 0 0 1-16.736 16.736c-9.248 0-16.736-7.488-16.736-16.736s7.496-16.736 16.736-16.736a16.734 16.734 0 0 1 16.736 16.736" fill="#F7BE15" p-id="584"></path><path d="M668.24 481.448c-12.592 0-22.824-10.24-22.824-22.816 0-12.576 10.232-22.816 22.824-22.816 12.576 0 22.816 10.24 22.816 22.816 0 12.576-10.24 22.816-22.816 22.816m0-33.464c-5.88 0-10.664 4.776-10.664 10.648a10.658 10.658 0 0 0 21.312 0 10.654 10.654 0 0 0-10.648-10.648" fill="#474341" p-id="585"></path><path d="M297.952 730.592a16.734 16.734 0 0 1-16.736 16.736c-9.248 0-16.736-7.488-16.736-16.736a16.734 16.734 0 1 1 33.472 0" fill="#DD9D00" p-id="586"></path><path d="M281.208 753.416c-12.576 0-22.816-10.232-22.816-22.824 0-12.576 10.24-22.816 22.816-22.816 12.576 0 22.816 10.24 22.816 22.816 0.008 12.592-10.232 22.824-22.816 22.824m0-33.472a10.654 10.654 0 0 0-10.648 10.648 10.66 10.66 0 0 0 10.648 10.656 10.656 10.656 0 0 0 10.648-10.656 10.648 10.648 0 0 0-10.648-10.648" fill="#474341" p-id="587"></path></svg>
                <span>正在从火星赶来…</span>
            </div>
        </van-overlay>
        <form action="/">
            <van-search v-model="seachs" @search="seach"  placeholder="你想找什么" @cancel="tui"  show-action input-align='center' >
            </van-search>
        </form>
        <van-button type="info" plain hairline :block="true" @click="changeShow">搜索类别</van-button>
        <van-action-sheet v-model="show" :actions="actions" cancel-text='hh' title="选择搜索类别" 
        @select="selected" :close-on-click-action='true' close-icon='like-o' />
        <van-list v-show="sea" v-model="loading" :finished="finished" finished-text="已经空了"  @load="onLoad" >
            <fiction v-if="tag=='fiction'" :xs='list' tag='main'></fiction>
            <cartoon v-if="tag=='cartoon'" :ct='list' tag='main'></cartoon>
            <films v-if="tag=='films'" :fil='list' tag='main'></films>
            <water v-if="tag=='image'" :data='list' tag='image'></water>
            <water v-if="tag=='video'" :data='list' tag='video'></water>
            <div v-if="tag=='artcle'" class="art_wrap">
                <router-link v-for="item in list" :key="item.id" :to=" `/append/info/${item.id}`" tag="div" class="art">
                    <div class="art_head">
                        <van-image lazy-load alt="图片加载失败"  fit="cover" :src="item.img_url"/>
                    </div>
                    <div class="art_info">
                        <h5>{{ item.title }}</h5>
                        <p>{{ item.lead }}</p>
                    </div>
                </router-link>
            </div>

        </van-list>
        
    </div>
</template>
<script>
import water from '../tool/waterfall.vue';
import fiction from '../tool/Fiction.vue'; //小说组件
import cartoon from '../tool/cartoon.vue'; //漫画组件
import films from '../tool/Films.vue'; //影视组件
import { Toast } from 'vant';
export default {
    data() {
        return {
            seachs:'',
            sea:false,
            show: false,//选项卡是否显示
            actions: [
                { name: 'Image',tag:'image',},
                { name: '视频',tag:'video',},
                { name: '文章',tag:'artcle',},
                { name: '小说',tag:'fiction',},
                { name: '漫画',tag:'cartoon',},
                { name: '影视',tag:'films',},
            ],//选项卡数组
            tag:'image',//选择类别
            allList:[],//总数据数组
            list:[],//数据数组
            loads:10,
            stare:0,
            zong:0,
            loading:false,
            finished:false,
            over:false,
                

        }
    },
    created() {
        
    },
    methods: {
        changeShow(){
            this.show = true;
        },
        selected(item){
            this.tag = item.tag;
            this.allList = [];
            this.list = [];
        },
        seach(value){
            if (value.includes('/') ||value.includes(' ') ||value.includes('&') ||value.includes('?')) {
                Toast({
                    message: '非法字符',
                    icon: 'close'
                });
                return;
            }
            this.over = true;
            this.sea = true;
            if (this.tag == 'image') {
                this.$axios.get(`${this.$store.state.url}seach/img/${value}`).then((res)=>{
                    if (res.data.code == 0) {
                        this.value='';
                        this.allList = res.data.msg;
                        this.sta();
                        this.over = false;
                    } else {
                    Toast({
                        message: '飞船上有不明物体,发送失败',
                        icon: 'close'
                    });
                    this.over = false;
                    }
                }).catch((err)=>{
                    Toast({
                        message: '访问数据时,火星已被大魔王统治',
                        icon: 'question-o'
                    });
                    this.over = false;
                });
                this.over = false;
            } else if(this.tag == 'video'){
                this.$axios.get(`${this.$store.state.url}seach/mv/${value}`).then((res)=>{
                    if (res.data.code == 0) {
                        this.value='';
                        this.allList = res.data.msg;
                        this.sta();
                        this.over = false;
                    } else {
                    Toast({
                        message: '飞船上有不明物体,发送失败',
                        icon: 'close'
                    });
                    this.over = false;
                    }
                }).catch((err)=>{
                    Toast({
                        message: '访问数据时,火星已被大魔王统治',
                        icon: 'question-o'
                    });
                    this.over = false;
                });
                this.over = false;
            } else if(this.tag == 'artcle'){
                this.$axios.get(`${this.$store.state.url}seach/art/${value}`).then((res)=>{
                    if (res.data.code == 0) {
                        this.value='';
                        this.allList = res.data.msg;
                        this.sta();
                        this.over = false;
                    } else {
                    Toast({
                        message: '飞船上有不明物体,发送失败',
                        icon: 'close'
                    });
                    this.over = false;
                    }
                }).catch((err)=>{
                    Toast({
                        message: '访问数据时,火星已被大魔王统治',
                        icon: 'question-o'
                    });
                    this.over = false;
                });
                this.over = false;
            } else if(this.tag == 'fiction'){
                this.$axios.get('http://api.pingcc.cn/?xsname=' + value).then((res)=>{
                    if (res.data.code == 0) {
                        this.value='';
                        this.allList = res.data.list;
                        this.sta();
                        this.over = false;
                    } else {
                    Toast({
                        message: '返回数据时,飞船被大魔王劫持了QAQ',
                        icon: 'close'
                    });
                    this.over = false;
                    }
                }).catch((err)=>{
                    Toast({
                        message: '访问数据时,火星已被大魔王统治',
                        icon: 'question-o'
                    });
                    this.over = false;
                });
            } else if(this.tag == 'cartoon'){
                this.$axios.get('http://api.pingcc.cn/?mhname=' + value).then((res)=>{
                    if (res.data.code == 0) {
                        this.value='';
                        this.allList = res.data.list
                        this.sta();
                        this.over = false;
                    } else {
                    Toast({
                        message: '返回数据时,飞船被大魔王劫持了QAQ',
                        icon: 'close'
                    });
                    this.over = false;
                    }
                }).catch((err)=>{
                    Toast({
                        message: '访问数据时,火星已被大魔王统治',
                        icon: 'question-o'
                    });
                    this.over = false;
                });

            } else if(this.tag == 'films'){
                this.$axios.get('http://api.pingcc.cn/?ysname=' + value).then((res)=>{
                    if (res.data.code == 0) {
                        this.value='';
                        this.allList = res.data.list
                        this.sta();
                        this.over = false;
                    } else {
                    Toast({
                        message: '返回数据时,飞船被大魔王劫持了QAQ',
                        icon: 'close'
                    });
                    this.over = false;
                    }
                }).catch((err)=>{
                    Toast({
                        message: '访问数据时,火星已被大魔王统治',
                        icon: 'question-o'
                    });
                    this.over = false;
                });

            }
        },
        sta(){
            if (this.allList.length < 10) {
                return this.list = this.allList
            }
            for (let i = 0; i < 10; i++) {
                this.$set(this.list,i,this.allList[i])
            }
        },
        onLoad(){
            setTimeout(() => {
                for (let i = this.list.length; i <= this.list.length+this.loads; i++) {
                    if (i = this.allList.length) {
                        return this.finished = true;
                    }
                    this.list.push(this.allList[i]);
                }
           }, 500);
        },
        tui(){
            this.$router.go(-1)
        }
    },
    components:{
        fiction,
        cartoon,
        films,
        water,
    }
}
</script>
<style lang="less" scoped>
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
.van-search{
    .van-search__content{
        background-color: #fff;
    }
}
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
</style>