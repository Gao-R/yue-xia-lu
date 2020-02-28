<template>
  <div>
    <div class="mui-card">
      <div class="mui-card-header">
        <div class="icon">
          <svg t="1579688023635" class="icon" viewBox="0 0 1024 1024" version="1.1" xmlns="http://www.w3.org/2000/svg" p-id="1274" width="64" height="64"><path d="M748.082432 275.968L121.266432 63.104l839.552 839.552z" fill="#55AEFF" p-id="1275"></path><path d="M1021.362432 1006.72L762.930432 279.296l22.912-22.912c4.992-4.992 4.992-13.184 0-18.304-4.992-4.992-13.184-4.992-18.304 0l-22.912 22.912L17.202432 2.56C11.570432 0.64 5.170432 2.816 1.970432 7.936s-2.432 11.776 1.792 16l90.88 90.88-4.224-0.896c-6.912-1.536-13.952 2.816-15.488 9.728-1.536 6.912 2.816 13.952 9.728 15.488l44.16 9.984 97.792 97.792-8.448-0.256c-7.04-0.256-13.056 5.376-13.312 12.544-0.256 7.168 5.376 13.056 12.544 13.312l35.968 1.152 106.752 106.752-9.856 3.072c-6.784 2.048-10.752 9.344-8.576 16.128 1.664 5.632 6.784 9.216 12.416 9.216 1.28 0 2.56-0.128 3.712-0.512l23.168-7.04 16 16c0 0.896 0.128 1.92 0.256 2.816L431.410432 574.336 68.274432 937.344c-4.992 4.992-4.992 13.184 0 18.304 2.56 2.56 5.888 3.84 9.088 3.84 3.328 0 6.656-1.28 9.088-3.84L450.866432 591.36l151.424 33.536c0.896 0.256 1.92 0.256 2.816 0.256l17.792 17.792-7.04 23.168c-2.048 6.784 1.792 14.08 8.576 16.128 1.28 0.384 2.56 0.512 3.712 0.512 5.504 0 10.624-3.584 12.416-9.216l3.072-9.856 106.752 106.752 1.152 35.968c0.256 7.04 6.016 12.544 12.928 12.544h0.384c7.168-0.256 12.8-6.144 12.544-13.312l-0.256-8.448 97.792 97.792 9.984 44.16c1.408 6.016 6.656 10.112 12.544 10.112 0.896 0 1.92-0.128 2.816-0.384 6.912-1.536 11.392-8.448 9.728-15.488l-0.896-4.224 90.88 90.88c2.56 2.432 5.76 3.84 9.088 3.84 2.432 0 4.736-0.64 6.912-2.048 5.248-3.072 7.424-9.344 5.376-15.104zM62.514432 46.208l476.16 169.216-396.8-89.984-79.36-79.232z m113.664 113.536l437.888 99.072-349.568-10.752-88.32-88.32z m114.944 115.072l377.856 11.648-280.832 85.376-97.024-97.024zM702.386432 303.36L511.026432 494.592l-102.144-102.144L702.386432 303.36zM430.514432 450.688l62.208 62.208-39.68 39.68-22.528-101.888z m41.984 119.04l38.528-38.528 60.416 60.416-98.944-21.888z m56.832-56.832L720.690432 321.536l-89.216 293.376-102.144-102.016z m122.88 122.88l85.376-280.832 11.648 377.856-97.024-97.024z m123.648 123.776l-10.752-349.568 99.072 437.888-88.32-88.32z m122.624 122.496l-89.856-396.8 169.216 476.16-79.36-79.36z" fill="#002C5B" p-id="1276"></path></svg>
        </div>
      </div>
      <div class="mui-card-content">
          <div class="mui-card-content-inner">
            <van-field clearable clickable required maxlength="15" type="text" placeholder="Email" v-model="loginForm.email" />
            <van-field clearable clickable required  maxlength="15" type="password" :placeholder="plac" v-model="loginForm.pass" />
            <div v-show="isregist" class="regist">
              <van-field clearable clickable  maxlength="10" type="text" placeholder="name" v-model="loginForm.name" />
              <van-field clearable clickable  maxlength="10" type="number" placeholder="qq" v-model="loginForm.qq" />
              <van-field clearable clickable required  maxlength="15" type="tel" placeholder="cell_phone" v-model="loginForm.cell_phone" />
              <van-field clearable clickable  maxlength="15" type="textarea" placeholder="mottot" v-model="loginForm.mottot" />
              <van-field clearable clickable  maxlength="15" type="text" placeholder="administrator" v-model="loginForm.administrator" />
            </div>
            <van-button block color="linear-gradient(to right, #659ef5, #fe798c)" type="primary" @click="sign">Sign in</van-button>
          </div>
      </div>
      <div class="mui-card-footer"><span @click="change">{{text}}</span>&nbsp;|&nbsp;<span @click="changere">找回密码</span></div>
    </div>
  </div>
</template>
<script>
import { mapMutations } from 'vuex';
import { Toast } from 'vant';
export default {
  data () {
    return {
      loginForm: {
        email: '',
        pass: '',
        name:'',
        qq:'',
        cell_phone:'',
        mottot:'',
        administrator:'',
      },
      isregist:false,
      text:'注册',
      plac:'Pass',
      isre:false,
    };
  },
  methods: {
    ...mapMutations(['changeLogin']),
    login () {
      let _this = this;
      if (this.loginForm.email === '' || this.loginForm.pass === '') {
        alert('账号或密码不能为空');
      } else {
        this.$axios({
          method: 'post',
          url: `${this.$store.state.url}account/landing`,
          data: _this.loginForm
        }).then(res => {
          if (res.data.code == 0) {
            // 将用户token保存到vuex中
            _this.$store.commit('changeToken', { token: res.data.msg.token })
            _this.$store.commit('changeUser', res.data.msg.email)
            this.$axios({
              method:'get',
              url:`${this.$store.state.url}user/info/${this.$store.state.user}`
            }).then((reslut)=>{
              if(reslut.data.code == 0){
                this.$store.commit('changeUser',JSON.stringify(reslut.data.msg[0]))
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
            _this.$router.push('/home');
             Toast({
              message: '成功来到 咕咕 Success to goo goo',
              icon: 'smile-o'
            });
          } else if (res.data.code == 1) {
            Toast({
              message: '密码似乎是错的  The password seems to be wrong',
              icon: 'close'
            });
          } else if (res.data.code == 2) {
            Toast({
              message: '不存在此人  There is no such person',
              icon: 'close'
            });
          }
          
        }).catch(error => {
           Toast({
              message: '服务器故障  Server failure',
              icon: 'close'
            });
        });
      }
    },
    /*
      /account/regist
      email
      pass
      name
      qq
      cell_phone
      mottot
      administrator
    */
   regist(){
      if (this.loginForm.email === '' || this.loginForm.pass === '' || this.loginForm.cell_phone === '') {
        alert('信息填写不全');
      } else {
        if (this.loginForm.administrator != 'grg') {
          this.loginForm.administrator = ''
        }
        this.$axios({
          method: 'get',
          url: `${this.$store.state.url}account/regist`,
          params:{
            email:this.loginForm.email,
            pass:this.loginForm.pass,
            name:this.loginForm.name,
            qq:this.loginForm.qq,
            cell_phone:this.loginForm.cell_phone,
            mottot:this.loginForm.mottot,
            administrator:this.loginForm.administrator,
          }
        }).then(res => {
          if (res.data.code == 0) {
            // 将用户token保存到vuex中
             Toast({
              message: '注册成功',
              icon: 'smile-o'
            });
            this.loginForm.email = '';
            this.loginForm.pass = '';
            this.loginForm.name = '';
            this.loginForm.qq = '';
            this.loginForm.cell_phone = '';
            this.loginForm.mottot = '';
            this.loginForm.administrator = '';
            this.isregist = false;
          } else if (res.data.code == 1) {
            Toast({
              message: '注册失败',
              icon: 'close'
            });
          }
        }).catch(error => {
           Toast({
              message: '服务器故障  Server failure',
              icon: 'close'
            });
        });
      }

   },
   changere(){
    if (this.isre == false) {
       this.isre = true;
      this.plac = 'Phone';
     } else if (this.isre == true) {
       this.isre = false;
      this.plac = 'Pass';
     }
   },
   retrieve(){
    this.$axios({
      method: 'get',
      url: `${this.$store.state.url}account/retrieve`,
      params:{
        email:this.loginForm.email,
        phone:this.loginForm.pass,
      }
    }).then(res => {
      if (res.data.code == 0) {
        Toast({
          message: `您的密码为${res.data.msg[0].passold}`,
          icon: 'smile-o'
        });
        this.loginForm.email = '';
        this.loginForm.pass = '';
      } else if (res.data.code == 1) {
        Toast({
          message: '找回失败',
          icon: 'close'
        });
      }
    }).catch(error => {
        Toast({
          message: '服务器故障  Server failure',
          icon: 'close'
        });
    });
   },
   sign(){
      if(this.isregist == false){
        if (this.plac == 'Pass') {
           this.login();
        }else if (this.plac == 'Phone') {
          this.retrieve();
        }
     }else if (this.isregist == true) {
       this.regist();
     }
   },
   change(){
    this.plac = 'Pass';
     if(this.isregist == false){
       this.isregist = true;
       this.text = '登陆';
     }else if (this.isregist == true) {
       this.isregist = false;
       this.text = '注册';
     }
   }
  }
};
</script>
<style lang="less" scoped>
.mui-card{
  margin: 0;
  padding: 10px;
  background: url(../../assets/img/1105444167.jpg);
  background-position-x: 100px;
  background-size: 100%;
  .mui-card-header{
    display: flex;
    flex-direction: column;
    justify-content: center;
    .icon{
      margin: 50px 0;
    }
  }
  .mui-card-footer{
    display: flex;
    justify-content: center;
    font-size: 16px;
    color: #fff;
  }
}
</style>