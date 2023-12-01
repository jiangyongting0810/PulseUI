<template>
  <div class="topnav">
      <div class="logo">
        <router-link to="/" class="homes">
          <img src="../assets/SVG/Home.svg" class="home">
          <span>首页</span>
        </router-link>
      </div>
      <ul class="menu">
        <li>
          <router-link to="/doc">文档</router-link>
        </li>
      </ul>
      <span class="toggleAside" @click="toggleMenu">
        <svg>
          <use xlink:href="#icon-caidan"></use>
        </svg>
      </span>
    </div>
</template>

<script lang="ts">
import { inject, ref, Ref } from 'vue'
import logo from '../assets/logo.png'
export default{
  setup(){
    const menuVisible = inject<Ref<boolean>>('menuVisible')
    const toggleMenu = () => {
      menuVisible!.value = !menuVisible!.value
    }
    const logo1 = ref(logo)
    return { logo1,toggleMenu }
  }
}
</script>

<style lang="scss" >


.topnav{
    display: flex;
    padding: 16px;
    // position: relative;
    z-index: 10;
    position: fixed;
    top: 0;
    left: 0;
    width: 100%;
    z-index: 20;
    justify-content: center;
    align-items: center;
    > 
    .logo{
      max-width: 10em;
      margin-right: auto;
      display: flex;
      align-items: center;
      > img{
        width: 32px;
        height: 32px;
      }
      > span{
        margin-left: 10px;
        font-weight: bold;

      }
    }
    // .logo{
    //   width: 40px;
    //   height: 40px;
    // }
    >.menu{
      display: flex;
      white-space: nowrap;
      >li {
        margin: 0 1em;
      }
    }
    >.toggleAside{
      width: 24px;
      height: 24px;
      // background: red;
      position: absolute;
      left: 16px;
      top: 50%;
      left: 16px;
      transform: translateY(-50%);
      display: none;
      >svg {
        grid-area: icon;
        width: 24px;
        height: 24px;
      }
    }
    @media(max-width:500px){
      >.menu{
        display: none;
      }
      >.logo{
        margin:0 auto
      }
      >.toggleAside{
        display: inline-block;
      }
    }
  }
  .homes{
    // border: 1px solid red;
    display: flex;
    align-items: center;
    >span {
      margin-top: 3px;
      // line-height: 30px;
    }
    >.home{
    width: 30px;
  }
  }
  
</style>
  