<template>
  <header>
    <div class="bg-teal text-white p-6 sm:px-20">
        <a 
        class="block w-2/5 sm:w-1/4 xl:w-1/6" 
        :href="mainLogo.link"
        >
          <img :src="mainLogo.img" />
        </a>
    </div>
    <div class="w-full min-h-96 flex flex-col items-center text-white bg-hero-pattern-1 bg-no-repeat bg-cover bg-left-center font-semibold">
      <h1 class="text-center my-10 w-3/5">{{ localeContent.title }}</h1>
      <h3 class="mb-10 w-3/5">{{ localeContent.intro }}</h3>
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
      mainLogo: {
        img: require("../images/logo-main.svg"),
        link: "https://tradehub.earth/",
      },
    }
  }
}
</script>
