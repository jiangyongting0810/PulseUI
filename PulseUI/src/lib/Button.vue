<template>
  <div>
    <button v-bind="rest">
      <slot />
    </button>
  </div>
</template>
<script lang="ts">
export default{
  inheritAttrs:false,
  setup(props,context){
    const {size , ...rest} = context.attrs;
    return {size , rest}
  }
}
</script>
<style scoped lang="scss">
  div{
    border: 1px solid red;
  }
</style>