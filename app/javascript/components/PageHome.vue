<template>
  <div class="min-h-screen w-full grid font-sans">
    <TheHero
      :localeContent="localeContent.hero"
      :logos="logos.mainLogo"
    />
    <slot />
    <TheFooter 
      :logos="logos"
    />
  </div>  
</template>

<script>
import TheHero from './TheHero.vue'
import TheFooter from './TheFooter.vue'
// import { logos } from '../data/logos.js'

export default {
  name: 'Home',

  components: {
    TheFooter,
    TheHero,
  },

  props: {
    localeContent: {
      type: Object
    },
  },

  methods: {

  }
}
</script>

