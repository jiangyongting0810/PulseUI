<template>
  <div>
    Tabs示例
  </div>
  <h1>示例1</h1>
  <Tabs>
    <Tab>内容1</Tab>
    <Tab>内容2</Tab>
    <Tab>内容3</Tab>
  </Tabs>
</template>
<script lang="ts">
import Tabs from '../lib/Tabs.vue'
import Tab from '../lib/Tab.vue'

export default{
  components:{
    Tabs,
    Tab
  }
}
</script>