<template>
  <header>
    <div class="topbar">
      logo
    </div>
    <div class="hero">
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

<style lang="sass" scoped>

</style>