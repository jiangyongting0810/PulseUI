<template>
  <div>
    <h1>Switch 组件示例 </h1>
    <Switch1Demo/>
    <Demo :component="Switch1Demo" />
    <Demo :component="Switch2Demo" />
  </div>
</template>

<script lang="ts">
import Switch from '../lib/Switch.vue'
import Button from '../lib/Button.vue'
import Switch1Demo from './Switch1.demo.vue'
import {
  ref
} from 'vue'
import Switch2Demo from './Switch2.demo.vue'
import 'prismjs';
import 'prismjs/themes/prism.css'
import Demo from './Demo.vue'

const Prism = (window as any).Prism

export default {
  components: {
    Switch,
    Button,
    Switch1Demo,
    Switch2Demo,
    Demo
},
  setup() {
    const bool = ref(false)
    return {
      bool,
      Switch1Demo,
      Switch2Demo,
      Prism
    }
  }
}
</script>

