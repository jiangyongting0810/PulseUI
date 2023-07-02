<template>
  <button class="pulse-switch" @click="toggle" :class="{'pulse-checked':value}" :disabled="disabled">
    <span>
    </span>
  </button>
  <!-- <div>
      {{ value }}
    </div> -->
</template>
<script lang="ts">
export default{
  props:{
    value:Boolean,
    disabled: {
    type: Boolean,
    default: false,
  },
  },
  
  setup(props,context){
    const toggle = ()=>{
      context.emit('update:value',!props.value)
    }
    return {toggle}
  }
}
</script>
<style lang="scss" scoped>
$h:22px;
$h2:$h - 4px;
  .pulse-switch{
    height: $h;
    width: $h*2;
    border: none;
    background: rgb(210 , 210, 210);
    border-radius: $h / 2;
    position: relative;
    box-shadow: inset 0px 0px 0px 1px rgb(255, 255, 255);
    > span{
      position: absolute;
      top: 2px;
      left: 2px;
      height: $h2;
      width: $h2;
      background:rgb(255, 255, 255);
      border-radius: $h2 / 2;
      box-shadow: inset 0px 0px 10px #D5F1EC;
      transition:left 0.25s;
    }
    &.pulse-checked{
      background: rgb(74 , 165, 140);
      box-shadow: inset 0px 0px 0px 1px #327261;
      > span {
        left: calc(100% - #{$h2} - 2px);
      }
    }
    &:active{
      > span {width: $h2 + 4px;}
    }
    &.pulse-checked:active{
      > span {width: $h2 + 4px; margin-left: -4px;}
    }
  }
  
  
</style>