<template>
    <div>
        <div v-for="(item, index) in xs" :key="index">
            
            <router-link :to="'/main/book?url=' + item.url + '&tag='+tag" tag="div">
             <div class="xs">
                <div class="img_wrap">
                    <van-image height="120" width="100" lazy-load :src="item.cover"/>
                </div>
                <div class="info_wrap">
                    <h4>{{ item.name }}</h4>
                    <h6>{{ item.tag }}</h6>
                    <h6 >{{ item.author }}</h6> 
                    <h6>{{item.num}}</h6>
                    <h6>{{item.time}}</h6>
                </div>
            </div>
            </router-link>

        </div>
    </div>
</template>
<script>
export default {
    props:['xs','tag']
}
</script>
<style lang="less" scoped>
@font-face {
    font-family: fa;
    src: url('../../assets/ttf/aa.ttf');
}
.xs{
    margin: 10px;
    display: flex;
    background-color: #fff;
    border-radius: 5px;
    .img_wrap{
        flex:5;
        margin:5px 0 5px 8%;
        .van-image{
            border-radius: 5px;
            border-left: 1px solid #999;
            box-shadow: 0 3px 6px  rgb(46, 45, 45);
        }
    }
    .info_wrap{
        flex:6;
        text-align: left;
        margin-right: 8%;
        *{
            margin:10px 0; 
            letter-spacing: 1px;
        }
        :nth-child(1){
            // margin:15px 0;
            font-size: 17px; 
            font-weight: 600;
            font-family: fa;
        }
        :nth-child(2),:nth-child(3){
            font-size: 13px;
        }
    }
}
</style>