<template>
  <footer class="footer">
    <p>Copyright 2021</p>
  </footer>
</template>

<script>
export default {
  name: 'TheFooter'
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

.footer {
  background-color: #ccc;
  color: #fff;
  padding: 40px 0;
}

</style>