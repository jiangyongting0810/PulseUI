<template>
  <button class="pulse-button" :class="classes">
    <slot />
  </button>
</template>
<script lang="ts">
import { computed } from 'vue';

export default{
  props:{
    theme:{
    type:String,
    default:'button'},
    size:{
      type:String,
      default:'normal'
    },
  },
  setup(props){
    const { theme ,size } = props;
    const classes = computed(()=>{
      return {
        [`pulse-theme-${theme}`]: theme,
        [`pulse-size-${size}`]: size,
      }
    })
    return {classes}
  }
}

</script>
<style lang="scss">
$h: 32px;
$border-color: #d9d9d9;
$color: #333;
$green: #327261;
$radius: 6px;
.pulse-button {
  box-sizing: border-box;
  height: $h;
  padding: 0 12px;
  cursor: pointer;
  display: inline-flex;
  justify-content: center;
  align-items: center;
  white-space: nowrap;
  background: white;
  color: $color;
  border: 1px solid $border-color;
  border-radius: $radius;
  box-shadow: 0 1px 0 fade-out(black, 0.95);
  & + & {
    margin-left: 8px;
  }
  &:hover,
  &:focus {
    color: $green;
    border-color: $green;
  }
  &:focus {
    outline: none;
  }
  &::-moz-focus-inner {
    border: 0;
  }
  &.pulse-theme-link{
    border-color: transparent;
    box-shadow: none;
    color: $green;
    &:hover,&:focus{
      color: lighten($green, 10%);
    }
  }
  &.pulse-theme-text{
    border-color: transparent;
    box-shadow: none;
    color: inherit;
    background: none;
    &:hover,&:focus{
      background: darken(white, 5%);
    }
  }
  &.pulse-theme-button{
    &.pulse-size-big{
      font-size:24px;
      height: 48px;
      padding: 0 16px;
    }
    &.pulse-size-small{
      font-size: 12px;
      height: 20px;
      padding: 0 4px; 
    }
  }
}
</style>