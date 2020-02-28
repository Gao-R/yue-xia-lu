<template>
    <div v-if="adm" class="del">
        <van-button type="primary" icon="delete" block color="linear-gradient(to right, #659ef5, #fe798c)" @click="del">Delete</van-button>
    </div>
</template>
<script>
import { Toast } from 'vant';
import qs from 'qs';
export default {
    data() {
        return {
            adm:false,
        }
    },
    props:['keys','tag','id','alllist'],
    created() {
        this.getadm()
    },
    methods: {
        getadm(){
            if (localStorage.getItem('user')==''||localStorage.getItem('user')==undefined) return;
            const use = JSON.parse(localStorage.getItem('user')) || '';
            if (use.administrator == 'grg') {
                this.adm = true;
            }else{
                this.adm = false;
            }
        },
        del(){
            var url = [];
            if ( this.alllist != '') {
                for (let i = 0; i < this.alllist.length; i++) {
                    url[i] =  this.alllist[i].img_url;                    
                }
            }
            this.$axios({
                method:'get',
                url:`${this.$store.state.url}subsidiary/delete`,
                params:{
                    id:this.id,
                    tag:this.tag,
                    key:this.keys,
                    url
                },
                 paramsSerializer: params => {
                    return qs.stringify(params, { arrayFormat: 'repeat' })
                }
            }).then((reslut)=>{
                if(reslut.data.code == 0){
                    Toast({
                        message: '删除成功',
                        icon: 'fire-o'
                    });
                    this.$router.go(-1);
                }else if(reslut.data.code == 1){
                    Toast({
                        message: '删除失败',
                        icon: 'close'
                    });
                }
            }).catch((err)=>{
                console.log(err);
                
                Toast({
                    message: '服务器错误',
                    icon: 'question-o'
                });
            });
        }
    },
}
</script>
<style lang="less" scoped>
.del{
    height: 100px;
}
</style>