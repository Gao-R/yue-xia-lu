<template>
    <div>
                <div class="mui-card">
            <div class="mui-card-header">
                <div>把你的发光点都写上吧!</div>
            </div>
            <div class="mui-card-content">
                <div class="mui-card-content-inner">
                    <div class="img">
                        <van-field v-model="user.name" maxlength="15" show-word-limit  autofocus clearable clickable required placeholder="改一个炫酷的名字吧" />
                        <van-field v-model="user.qq" type="number" placeholder="QQ" maxlength="10" clickable clearable required />
                        <van-field v-model="user.pass0" type="password" maxlength="15" placeholder="first" clickable clearable show-word-limit required />
                        <van-field v-model="user.pass1" type="password" placeholder="second" clickable clearable required />
                        <van-field v-model="user.mottot" required rows="6" maxlength="1500" autosize label="座右铭" type="textarea" placeholder="把你最爱的那句话,写上来吧!" clickable clearable show-word-limit />
                    </div>
                    <van-uploader accept="image/*" preview-full-image v-model="fileList" :max-count="1" />
                </div>
            </div>
            <div class="mui-card-footer">
                <van-button icon="arrow-up" block color="linear-gradient(to right, #659ef5, #fe798c)" type="primary" @click="setchange">Submit</van-button>
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
            user:{
                name:'',
                mottot:'',
                qq:'',
                pass0:'',
                pass1:'',
            }
        }
    },
    methods: {
        setchange(){
            if (this.user.pass0 != this.user.pass1) {
                return Toast({
                    message: '两次密码不一样    The passwords are different',
                    icon: 'close'
                });
            }
            var use = JSON.parse(this.$store.state.user);
            this.$axios({
                method:'get',
                url:`${this.$store.state.url}user/change/${use.email}`,
                params:{
                    name:this.user.name,
                    mottot:this.user.mottot,
                    qq:this.user.qq,
                    pass:this.user.pass1, 
                }
            }).then((reslut)=>{
                if(reslut.data.code == 0){
                    Toast({
                        message: '文本内容上传成功  Text content uploaded successfully',
                        icon: 'passsed'
                    });
                    if(this.fileList[0]){
                        var data = new FormData();
                        data.append('headimg',this.fileList[0].file);
                        this.$axios({
                            method:'post',
                            url:`${this.$store.state.url}published/registimg/${use.email}`,
                            data
                        }).then((res)=>{
                            if(res.data.code == 0){
                                Toast({
                                    message: '头像上传成功  Profile photo uploaded successfully',
                                    icon: 'photo-o'
                                });
                                this.$axios({
                                    method:'get',
                                    url:`${this.$store.state.url}user/info/${use.email}`
                                }).then((reslut)=>{
                                    if(reslut.data.code == 0){
                                        this.$store.commit('changeUser',JSON.stringify(reslut.data.msg[0]));
                                        Toast({
                                        message: '资料修改成功  Data modification successful',
                                        icon: 'gem-o'
                                        });
                                        this.$router.push('/user');
                                    }else if(reslut.data.code == 1){
                                        Toast({
                                        message: '刷新用户信息失败  Failed to refresh user information',
                                        icon: 'close'
                                        });
                                    }
                                }).catch((err)=>{
                                    Toast({
                                        message: '用户服务器故障    User server failure',
                                        icon: 'question-o'
                                    });
                                })
                            }else if(res.data.code == 1){
                                Toast({
                                    message: '头像上传失败  Avatar upload failed',
                                    icon: 'close'
                                });
                            }else if(res.data.code == 2){
                                Toast({
                                    message: '删除旧数据失败    Failed to delete old data',
                                    icon: 'close'
                                });
                            }
                        }).catch((err)=>{
                            Toast({
                                message: '头像服务器故障    Avatar server failure',
                                icon: 'question-o'
                            });
                        });
                    }
                }else if(reslut.data.code == 1){
                    Toast({
                        message: '文本修改失败  Text modification failed',
                        icon: 'close'
                    });
                }
            }).catch((err)=>{
                 Toast({
                    message: '文本服务器故障    Text server failure',
                    icon: 'question-o'
                });
            })
        }
    },
}
</script>
<style lang="less" scoped>

</style>