<template>
  <footer class="px-20 py-10 flex justify-between bg-teal-dark text-white">
    <div class="w-1/4 grid grid-rows-2 gap-y-10">
      <img v-bind:src="mainLogo">
      <p>Copyright 2021</p>
    </div>
    <div class="min-w-1/2 grid grid-cols-3 gap-x-10">
      <a v-for="logo in logos" v-bind:href="logo.url">
        <img v-bind:src="logo.img"></span>
      </a>
    </div>
  </footer>
</template>

<script>
export default {
  name: "TheFooter",
  data() {
    return {
      mainLogo: require("../images/logo-main.png"),
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

<style lang="scss">
// $grey-xdark: #1b2024;

// body {
//   margin: 0;
// }

// .topbar {
//   background-color: $grey-xdark;
//   color: #fff;
//   height: 100px;
// }

// .footer {
//   background-color: #ccc;
//   color: #fff;
//   padding: 40px 0;
// }
</style>
