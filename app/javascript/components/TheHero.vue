<template>
  <header>
    <div class="bg-teal flex justify-between text-white p-6 sm:px-20">
        <a 
        class="block w-2/5 sm:w-1/4 xl:w-1/6" 
        :href="logos.main.link"
        :title="logos.main.title"
        >
          <img 
          :src="logos.main.img" 
          :alt="logos.main.title"
          />
        </a>
        <router-link to="/">Home</router-link>
        <router-link to="/terms-conditions">Terms and conditions</router-link>
        <a
        class="block self-center text-right" 
        :href="logos.tradehub.link"
        :title="logos.tradehub.text"
        >
          {{logos.tradehub.text}}
        </a>
    </div>
    <div class="w-full min-h-96 flex flex-col items-center text-white bg-hero-pattern-1 bg-no-repeat bg-cover bg-left-center font-semibold overlay py-6 sm:py-16">
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
    },
    logos: {
      type: Object
    }
  },
}
</script>
