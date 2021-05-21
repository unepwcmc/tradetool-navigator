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

<style lang="scss">
$grey-xdark: #1B2024;

body { 
  margin: 0;
}

.topbar {
  background-color: $grey-xdark;
  color: #fff;
  height: 100px;
}

.hero {
  background-color: #ccc;
  color: #fff;
  height: 500px;
}

</style>