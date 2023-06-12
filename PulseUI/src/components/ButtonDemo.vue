<template>
  <div>
    Button示例
  </div>
  <h1>示例1</h1>
  <div>
    <Button theme="button">你好</Button>
    <Button theme="link">你好</Button>
    <Button theme="text">你好</Button>
  </div>
  <h1>示例2</h1>
  <div>
    <Button size="big">大号</Button>
    <Button>普通</Button>
    <Button size="small">小号</Button>
  </div>
</template>
<script lang="ts">
import Button from '../lib/Button.vue'
export default{
  components:{Button},
  setup(){
    const onClick = () =>{
      console.log('hi');
    }
    return {onClick}
  }
}
</script>