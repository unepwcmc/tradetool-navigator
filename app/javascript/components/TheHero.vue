<template>
  <header>
    <div class="bg-teal text-white p-10 sm:px-20">
      logo
    </div>
    <div class="w-full font-semibold hero center p-10 sm:px-20">
      <h1>{{ localeContent.title }}</h1>
      <p>{{ localeContent.intro }}</p>
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
