<template>
  <button><span></span></button>
</template>
<style lang="scss" scoped>
$h:22px;
$h2:$h - 4px;
  button{
    height: $h;
    width: $h*2;
    border: none;
    background: rgb(210 , 210, 210);
    border-radius: $h / 2;
    position: relative;
    box-shadow: inset 0px 0px 0px 1px rgb(255, 255, 255);
  }
  span{
    position: absolute;
    top: 2px;
    left: 2px;
    height: $h2;
    width: $h2;
    background:rgb(255, 255, 255);
    border-radius: $h2 / 2;
    box-shadow: inset 0px 0px 10px #D5F1EC;
  }
  button:hover > span {
    left: calc(100% - #{$h2} - 2px);
  }
</style>