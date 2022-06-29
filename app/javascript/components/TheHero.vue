<template>
  <header>
    <div
      class="bg-teal flex justify-between items-center text-white p-6 sm:px-20"
    >
      <div class="w-2/5 sm:w-1/4 xl:w-1/6">
        <img :src="logos.main.img" :alt="logos.main.title" />
      </div>
      <div class="flex space-x-10 items-center">
        <a :href="logos.main.link" :title="logos.main.title"
          >Explore catalogue</a
        >
        <a href="/about">About</a>
        <a href="/glossary">Glossary</a>
        <a href="/terms-conditions">Terms and conditions</a>
        <a
          :href="logos.tradehub.link"
          :title="logos.tradehub.text"
          class="border border-solid p-1"
        >
          {{ logos.tradehub.text }}
        </a>
      </div>
    </div>
    <div
      class="
        w-full
        min-h-96
        flex
        justify-center
        text-white
        bg-hero-pattern-1 bg-no-repeat bg-cover bg-left-center
        font-semibold
        overlay
        py-6
        sm:py-16
      "
      :class="{'flex-col items-center': localeContent.intro} "
    >
      <h1 class="text-center self-center my-10 w-3/5">{{ localeContent.title }}</h1>
      <h3 v-if="localeContent.intro" class="mb-10 w-3/5">{{ localeContent.intro }}</h3>
    </div>
  </header>
</template>

<script>
export default {
  name: "TheHero",

  props: {
    localeContent: {
      type: Object,
    },
    logos: {
      type: Object,
    },
  },
};
</script>
