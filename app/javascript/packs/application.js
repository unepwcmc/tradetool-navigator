import 'core-js/stable'
import 'regenerator-runtime/runtime'
import Vue from 'vue/dist/vue.esm'
import store from '../store.js';
import FilterableTable from '@unep-wcmc/wcmc-components'
import '../stylesheets/application.scss';
// import TurbolinksAdapter from 'vue-turbolinks'
import VueRouter from 'vue-router';
import Routes from './routes.js'
import FilterableTableVue from '../components/FilterableTableVue.vue'
import PageHome from '../components/PageHome.vue'
import TermsAndConditions from '../components/TermsAndConditions.vue'

Vue.use(VueRouter);
    
const router = new VueRouter({
  routes: Routes,
});

Vue.config.productionTip = false
Vue.use(FilterableTable, { store })
// Vue.use(TurbolinksAdapter)

const images = require.context('../images', true)
require('../stylesheets/application.scss')

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
        PageHome,
        FilterableTableVue,
        TermsAndConditions
      },
      router: router,
    })
  }
})