<template>
    <div>
        <waterfall :data="data" :width="itemWidth" :gutterWidth="gutterWidth"  >
          <div class="water" v-for="item in data" :key="item.id">
              <router-link :to="'/main/' + tag + '/' + item.id">
                <img v-if="item.id" :lazy-src="item.img_url" alt="加载错误"/>
                <div class="info">
                  <span><van-icon name="like-o" /></span>
                  <span>{{item.title}}</span>
                </div>
              </router-link>
          </div>
      </waterfall>
    </div>
</template>
<script>
export default {
    data() {
        return {
            itemWidth:null,
            gutterWidth:100
        }
    },
    props:['data','tag']
}
</script>
<style lang="less" scoped>
.water{
  position: relative;
  margin: 15px 10px 15px 5px;
  border-radius: 5px;
  background-color: transparent;
  box-shadow: 3px 4px 7px 1px #fb2f8e;
  overflow: hidden;
  img{
    width: 100%;
    border-radius: 5px;
  }
  .info{
    position: absolute;
    bottom:0;
    left: 0;
    display: flex;
    justify-content: space-between;
    :nth-child(1){
      margin-left: 5px;
    }
    :nth-child(2){
      margin-right: 2px;
      color: #fff;
      font-size: 12px;
      font-weight: 600;
      text-overflow: ellipsis;
        overflow: hidden;
        white-space: nowrap;
    }
  }
}
</style>