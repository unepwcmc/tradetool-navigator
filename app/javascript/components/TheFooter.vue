<template>
  <footer class="px-20 py-10 flex justify-between bg-teal-dark text-white">
    <div class="grid grid-rows-2 gap-y-10">
      <span>Logo main</span>
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
      logos: [
        {
          img: "../images/logo-main.png",
          link: "https://unepwcmc.deltekfirst.com/UNEPWCMC/iAccess/",
        },
        {
          img: "blabla",
          link: "https://unepwcmc.deltekfirst.com/UNEPWCMC/iAccess/",
        },
        {
          img: "https://s3.amazonaws.com/wcmc.logo/UNEP_WCMC_logo_white.svg",
          link: "https://unepwcmc.deltekfirst.com/UNEPWCMC/iAccess/",
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
