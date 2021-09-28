<template>
  <div class="min-h-screen w-full grid font-sans">
    <TheHero
      :localeContent="localeContent.hero"
    />
    <slot class="p-10"/>
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

