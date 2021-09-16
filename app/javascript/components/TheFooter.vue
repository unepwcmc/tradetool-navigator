<template>
  <footer class="mt-auto center px-20 py-10 bg-teal-dark text-white">
    <div class="flex items-center sm:items-start flex-col sm:flex-row sm:flex-wrap sm:justify-between">
      <div class="pb-6 w-full sm:w-2/5 md:w-1/4 sm:grid grid-rows-2 sm:gap-y-12">
        <a v-bind:href="mainLogo.link">
          <img v-bind:src="mainLogo.img" />
        </a>
      </div>
      <div class="w-full sm:w-2/5 grid md:grid-cols-3 gap-10">
        <a v-bind:href="logo.link" v-for="logo in logos" :key="logo.img">
          <img v-bind:src="logo.img" />
        </a>
      </div>
    </div>
    <p class="mt-8">Copyright 2021</p>
  </footer>
</template>

<script>
export default {
  name: "TheFooter",
  data() {
    return {
      mainLogo: {
        img: require("../images/logo-main.png"),
        link: "https://tradehub.earth/",
      },
      logos: [
        {
          img: require("../images/logo-GCRF.png"),
          link: "https://www.ukri.org/our-work/collaborating-internationally/global-challenges-research-fund/",
        },
        {
          img: require("../images/logo-ukri.svg"),
          link: "https://www.ukri.org/",
        },
        {
          img: "https://s3.amazonaws.com/wcmc.logo/UNEP_WCMC_logo_white.svg",
          link: "https://www.unep-wcmc.org/",
        },
      ],
    };
  },
};
</script>
