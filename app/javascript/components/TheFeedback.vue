<template>
  <div class="p-10 sm:px-20">  
    <div class="">
      <div v-html="text" />
    </div>
  </div>
</template>
<script>
export default {
  name: "TheFeedback",
  props: {
    text: {
      type: String
    }
  },
}
</script>