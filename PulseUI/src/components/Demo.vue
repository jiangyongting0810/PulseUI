<template>
  <div>
    <div class="demo">
      <h2>{{component.__sourceCodeTitle}}</h2>
      <div class="demo-component">
        <switch2Demo :is="component"/>
      </div>
      <div class="demo-actions">
        <Button>查看代码</Button>
      </div>
      <div class="demo-code">
        <pre class="language-html" v-html="Prism.highlight(component.__sourceCode, Prism.languages.html, 'html')" />
      </div>
    </div>
  </div>
</template>

<script lang="ts">
import Button from '../lib/Button.vue'
import Switch2Demo from './Switch2.demo.vue'
import 'prismjs';
import 'prismjs/themes/prism.css'

const Prism = (window as any).Prism

export default {
  props:{
    component:Object
  },
  setup() {
    return {
      Prism
    }
  }
}
</script>