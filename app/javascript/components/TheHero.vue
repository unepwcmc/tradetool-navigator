<template>
  <header>
    <div class="bg-teal text-white p-10 sm:px-20">
      logo
    </div>
    <div class="w-full min-h-50 text-white bg-hero-pattern-1 bg-no-repeat bg-cover bg-left-center font-semibold hero center p-10 sm:px-20 md:px-40">
      <h1 class="text-center my-10">{{ localeContent.title }}</h1>
      <p class="my-10">{{ localeContent.intro }}</p>
    </div>
  </header>
</template>

<script>
export default {
  name: 'TheHero',

  props: {
    localeContent: {
      type: Object
    }
  },

  data () {
    return {
    }
  }
}
</script>
