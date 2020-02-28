<template>
    <div>
        <div class="mui-card">
            <div class="mui-card-header">
                <div @click="changeShow">发点什么</div>
            </div>
              <van-action-sheet v-model="show" :actions="actions" cancel-text='hh' title="选择发表类别" 
            @select="selected" :close-on-click-action='true' close-icon='like-o' />
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <div class="img">
                        <input type="text" v-show="show_art" v-model="imgs.lead" maxlength="30" placeholder="起一个好听的导语吧!最多30字">
                        <input type="text" v-model="imgs.title" maxlength="20" placeholder="起一个好听的名字吧!最多20字">
                        <textarea v-model="imgs.introduce" cols="30" rows="10" maxlength="3000" wrap="hard" placeholder="简单的介绍一下吧,最多三千字"></textarea>
                    </div>
                    <van-uploader accept="*" preview-full-image v-model="fileList" multiple :max-count="num" />
                </div>
            </div>
            <div class="mui-card-footer">
                <van-button icon="arrow-up" block color="linear-gradient(to right, #659ef5, #fe798c)" type="primary" @click="put">发表</van-button>
            </div>
        </div>
    </div>
</template>
<script>
import { Toast } from 'vant';
export default {
    data() {
        return {
            fileList:[],
            show: false,//选项卡是否显示
            actions: [
                { name: 'Image',tag:'img',},
                { name: 'Video',tag:'mv',},
                { name: 'Artcle',tag:'art',},
            ],//选项卡数组
            tag:'img',
            num:30,
            imgs:{
                title:'',
                introduce:'',
                lead:''
            },
            show_art:false,
            user:null,
        }
    },
    created() {
        this.getuser()
    },
    methods: {
        getuser(){
            if (this.$store.state.user == '') {
                 Toast({
                    message: '未登陆不可发表',
                    icon: 'close'
                });
            }else{
                this.user = JSON.parse(this.$store.state.user);
            }
        },
        changeShow(){
            this.show = true;
        },
        selected(item){
            this.tag = item.tag
        },
        put(){
            if (this.imgs.title.includes('/')||this.imgs.title.includes("'")||this.imgs.title.includes('"')||this.imgs.title.includes('?')||this.imgs.title.includes('&')||this.imgs.introduce.includes('/')||this.imgs.introduce.includes("'")||this.imgs.introduce.includes('"')||this.imgs.introduce.includes('?')||this.imgs.introduce.includes('&')||this.imgs.lead.includes('/')||this.imgs.lead.includes("'")||this.imgs.lead.includes('"')||this.imgs.lead.includes('?')||this.imgs.lead.includes('&')) {
                return  Toast({
                            message: '非法字符',
                            icon: 'bulb-o'
                        });
            }
            if (this.tag == 'img') {
                if (!this.fileList[0]&&!this.fileList[0].content.includes("image")) {
                    return Toast({
                            message: '封面为空 The cover is empty',
                            icon: 'bulb-o'
                        });
                }
                
                this.$axios({
                    method:'get',
                    url:`${this.$store.state.url}published/putimg/info`,
                    params:{
                        title:this.imgs.title,
                        introduce:this.imgs.introduce,
                        publisher:this.user.user_name,
                        portraits:this.user.head_img,
                        email:this.user.email,
                    }
                }).then((reslut)=>{
                    if(reslut.data.code == 0){
                        this.imgs.title = '',
                        this.imgs.introduce = '',
                        Toast({
                            message: '文本内容上传成功  Text content uploaded successfully',
                            icon: 'passsed'
                        });
                        var data = new FormData();
                        data.append('first',this.fileList[0].file);
                        for (var i = 1; i < this.fileList.length; i++) {
                            data.append('img',this.fileList[i].file);
                        }
                        this.$axios({
                            method:'post',
                            url:`${this.$store.state.url}published/putimg/img/${reslut.data.msg[1].parent}`,
                            data
                        }).then((res)=>{
                            if(res.data.code == 0){
                                Toast({
                                    message: '图片上传成功  Picture uploaded successfully',
                                    icon: 'passsed'
                                });
                                this.$router.push('/home')
                            }else if(res.data.code == 1){
                                Toast({
                                    message: '图片上传失败  Picture upload failed',
                                    icon: 'close'
                                });
                            }
                        }).catch((err)=>{
                            Toast({
                                message: '服务器故障 Server down',
                                icon: 'question-o'
                            });
                        });
                    }else if(reslut.data.code == 1){
                        Toast({
                            message: '文本内容上传失败  Text content upload failed',
                            icon: 'close'
                        });
                    }else if(reslut.data.status == 403){
                        Toast({
                            message: '登陆过期,请重新登陆   Login expired, please log in again',
                            icon: 'flower-o'
                        });
                    }
                }).catch((err)=>{
                    Toast({
                        message: '服务器故障 Server down',
                        icon: 'question-o'
                    });
                });
            } else if (this.tag == 'mv') {
                if (!this.fileList[0]||!this.fileList[1]) {
                    return Toast({
                        message: '上传内容不全  The uploaded content is incomplete',
                        icon: 'bulb-o'
                    });
                }
                if (this.fileList[0].content.includes("image") && this.fileList[1].content.includes("video")) {
                    this.$axios({
                        method:'get',
                        url:`${this.$store.state.url}published/putmv/info`,
                        params:{
                            title:this.imgs.title,
                            introduce:this.imgs.introduce,
                            publisher:this.user.user_name,
                            portraits:this.user.head_img,
                            email:this.user.email,
                        }
                    }).then((reslut)=>{
                        if(reslut.data.code == 0){
                            Toast({
                                message: '文本内容上传成功  Text content uploaded successfully',
                                icon: 'passsed'
                            });
                            var data = new FormData();
                            data.append('first',this.fileList[0].file);
                            data.append('mv',this.fileList[1].file);
                            this.$axios({
                                method:'post',
                                url:`${this.$store.state.url}published/pumv/mv/${reslut.data.msg[1].parent}`,
                                data
                            }).then((res)=>{
                                if(res.data.code == 0){
                                this.imgs.title = '',
                                this.imgs.introduce = '',
                                    Toast({
                                        message: '图片上传成功  Picture uploaded successfully',
                                        icon: 'passsed'
                                    });
                                     this.$router.push('/home')
                                }else if(res.data.code == 1){
                                    Toast({
                                        message: '图片上传失败  Picture upload failed',
                                        icon: 'close'
                                    });
                                }
                            }).catch((err)=>{
                                Toast({
                                    message: '服务器故障    server failure',
                                    icon: 'question-o'
                                });
                            });
                        }else if(reslut.data.code == 1){
                            Toast({
                                message: '文本内容上传失败  Text content upload failed',
                                icon: 'close'
                            });
                        }else if(reslut.data.status == 403){
                            Toast({
                                message: '登陆过期,请重新登陆   Login expired, please log in again',
                                icon: 'flower-o'
                            });
                    }
                    }).catch((err)=>{
                        Toast({
                            message: '服务器故障    server failure',
                            icon: 'question-o'
                        });
                    });
                }else{
                    Toast({
                        message: '上传格式错误  Upload format error',
                        icon: 'replay'
                    });
                    return;
                }
            } else if (this.tag == 'art'){
                if (!this.fileList[0]) {
                    return Toast({
                        message: '封面为空 The cover is empty',
                        icon: 'bulb-o'
                    });
                }
                this.$axios({
                    method:'get',
                    url:`${this.$store.state.url}published/putart/info`,
                    params:{
                        title:this.imgs.title,
                        content:this.imgs.introduce,
                        publisher:this.user.user_name,
                        head_img:this.user.head_img,
                        lead:this.imgs.lead,
                        email:this.user.email,
                    }
                }).then((reslut)=>{
                    if(reslut.data.code == 0){
                        Toast({
                            message: '文本内容上传成功  Text content uploaded successfully',
                            icon: 'passsed'
                        });
                    var data = new FormData();
                        data.append('first',this.fileList[0].file);
                        if (this.fileList[1]) {
                            for (var i = 1; i < this.fileList.length; i++) {
                                data.append('img',this.fileList[i].file);
                            }
                        }
                        this.$axios({
                            method:'post',
                            url:`${this.$store.state.url}published/putart/img/${reslut.data.msg[1].parent}`,
                            data
                        }).then((res)=>{
                            if(res.data.code == 0){
                                this.imgs.title = '',
                                this.imgs.introduce = '',
                                this.imgs.lead = '',
                                Toast({
                                    message: '文章上传成功  Article uploaded successfully',
                                    icon: 'passsed'
                                });
                                 this.$router.push('/home')
                            }else if(res.data.code == 1){
                                Toast({
                                    message: '文章上传失败  Article upload failed',
                                    icon: 'close'
                                });
                            }else if(reslut.data.status == 403){
                                Toast({
                                    message: '登陆过期,请重新登陆   Login expired, please log in again',
                                    icon: 'flower-o'
                                });
                            }
                        }).catch((err)=>{
                            Toast({
                                message: '服务器故障    server failure',
                                icon: 'question-o'
                            });
                        });
                    }else if(reslut.data.code == 1){
                        Toast({
                            message: '文本内容上传错误  Text content upload error',
                            icon: 'close'
                        });
                    }
                }).catch((err)=>{
                    Toast({
                        message: '服务器故障    server failure',
                        icon: 'question-o'
                    });
                });
            }
        }
    },
    watch: {
        tag:function(n){
            if (n == 'img') {
                this.num = 30;
                this.tag = 'img';
                this.show_art = false;
            } else if (n == 'mv') {
                this.num = 2;
                this.tag = 'mv';
                this.show_art = false;
            } else if (n == 'art') {
                this.num = 20;
                this.tag = 'art';
                this.show_art = true;
            }
        }
    },
}
</script>
<style lang="less" scoped>

</style>