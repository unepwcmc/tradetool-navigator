<template>
  <div class="bg-ash-light">  
    <div class="p-10 sm:px-64">
      <div class="text-xs" v-html="text" />
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