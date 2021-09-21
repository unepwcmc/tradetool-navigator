<template>
  <footer class="mt-auto center px-20 py-10 bg-teal-dark text-white">
    <div class="flex items-center sm:items-start flex-col sm:flex-row sm:flex-wrap sm:justify-between">
      <div class="pb-6 w-3/5 sm:w-2/5 xl:w-1/6 md:w-1/4 sm:grid grid-rows-2 sm:gap-y-12">
        <a :href="logos.main.link">
          <img :src="logos.main.img" />
        </a>
      </div>
      <div class="w-full sm:w-2/5 xl:w-1/3 grid grid-cols-3 gap-10">
        <a 
        :href="logo.link" 
        v-for="logo in logos.other" :key="logo.img"
        >
          <img :src="logo.img" />
        </a>
      </div>
    </div>
    <p class="mt-8 text-center sm:text-left">Copyright 2021</p>
  </footer>
</template>
<script>
export default {
  name: "TheFooter",
  props: {
    logos: {
      type: Object
    }
  },
};
</script>
