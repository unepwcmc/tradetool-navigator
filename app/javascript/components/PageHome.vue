<template>
  <div class="min-h-screen w-full grid font-sans text-xs sm:text-sm md:text-base">
    <TheHero
      :localeContent="localeContent.hero"
      :logos="logos"
    />
    <slot />
    <TheFeedback
      :text="textFeedback"
    /> 
    <TheFooter 
      :logos="logos"
    />
  </div>  
</template>

<script>
import TheHero from './TheHero.vue'
import TheFeedback from './TheFeedback.vue'
import TheFooter from './TheFooter.vue'
import logos from '../data/logos.js'

export default {
  name: 'Home',

  components: {
    TheFeedback, 
    TheFooter,
    TheHero,
  },

  props: {
    localeContent: {
      type: Object
    },
    textFeedback: {
      type: String
    }
  },

  data: () => ({
    logos: logos
  }),

  methods: {

  }
}
</script>
