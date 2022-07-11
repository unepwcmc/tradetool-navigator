import 'core-js/stable'
import 'regenerator-runtime/runtime'
// cookieconsent
import 'cookieconsent'
import 'cookieconsent/build/cookieconsent.min.css'
import Vue from 'vue/dist/vue.esm'
import store from '../store.js';
import FilterableTable from '@unep-wcmc/wcmc-components'
import '../stylesheets/application.scss';
import PageHome from '../components/PageHome.vue'
import TermsAndConditions from '../components/TermsAndConditions.vue'
import About from '../components/About.vue'
import Glossary from '../components/Glossary.vue'

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
        TermsAndConditions,
        About,
        Glossary
      }
    })
  }
})