import Vue from 'vue';
import App from './App/index.vue'

const vm = new Vue({
  el: '#app',
  components: {
    app: App,
  },
  render: h => h('app'),
})