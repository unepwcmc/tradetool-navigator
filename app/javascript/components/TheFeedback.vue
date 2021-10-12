<template>
  <div class="">  
    <div class="">
      <p v-html="text" />
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