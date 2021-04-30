<template>
  <div>
    <TheHero
      :localeContent="localeContent.hero"
    />
    <FilterableTable />
    <TheFooter />
  </div>  
</template>

<script>
import Vue from 'vue/dist/vue.esm'
import store from '../store.js'

import FilterableTable from 'wcmc-components'
import TheHero from './TheHero.vue'
import TheFooter from './TheFooter.vue'

Vue.use(FilterableTable, { store })

export default {
  name: 'Home',

  components: {
    FilterableTable,
    TheFooter,
    TheHero
  },

  props: {
    localeContent: {
      type: Object
    }
  },

  methods: {

  }
}
</script>

