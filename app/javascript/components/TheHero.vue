<template>
  <header>
    <div class="bg-teal text-white sm:px-20 py-10">
      logo
    </div>
    <div class="hero center">
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
