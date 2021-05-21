<template>
  <div>
    <TheHero
      :localeContent="localeContent.hero"
    />
    <slot />
    <TheFooter />
  </div>  
</template>

<script>
import TheHero from './TheHero.vue'
import TheFooter from './TheFooter.vue'

export default {
  name: 'Home',

  components: {
    TheFooter,
    TheHero,
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

