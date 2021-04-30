import 'core-js/stable'
import 'regenerator-runtime/runtime'
import Vue from 'vue/dist/vue.esm'
import store from '../store.js';
// import TurbolinksAdapter from 'vue-turbolinks'

import PageHome from '../components/PageHome.vue'
// import FilterableTable from 'wcmc-components'

// Vue.use(TurbolinksAdapter)
// Vue.use(FilterableTable, { store })
Vue.config.productionTip = false

// document.addEventListener('turbolinks:load', () => {
document.addEventListener('DOMContentLoaded', () => {
  if(document.getElementById('v-app')) {
    // new Vue({
    //   render: h => h(PageHome),
    // }).$mount('#v-app')

    new Vue({
      el: '#v-app',
      store,
      components: {
        PageHome
      }
    })
  }
})