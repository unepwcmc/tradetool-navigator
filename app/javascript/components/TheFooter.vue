<template>
  <footer
    class="
      mt-auto
      px-20
      py-10
      flex md:flex-wrap
      justify-between
      bg-teal-dark
      text-white
    "
  >
    <div class="w-2/5 md:w-1/4 grid grid-rows-2 gap-y-12">
      <a v-bind:href="mainLogo.url">
        <img v-bind:src="mainLogo.img" />
      </a>
      <p class="self-end">Copyright 2021</p>
    </div>
    <div class="w-2/5 grid md:grid-cols-3 gap-10">
      <a v-for="logo in logos" :key="logo.img" v-bind:href="logo.url">
        <img v-bind:src="logo.img" />
      </a>
    </div>
  </footer>
</template>

<script>
export default {
  name: "TheFooter",
  data() {
    return {
      mainLogo: { img: require("../images/logo-main.png"), link: "" },
      logos: [
        {
          img: require("../images/logo-GCRF.png"),
          link: "",
        },
        {
          img: require("../images/logo-ukri.svg"),
          link: "",
        },
        {
          img: "https://s3.amazonaws.com/wcmc.logo/UNEP_WCMC_logo_white.svg",
          link: "",
        },
      ],
    };
  },
};
</script>
