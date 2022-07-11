<template>
  <div :class="`${background}  text-${color} w-full flex flex-col items-center py-10`">  
    <div class="w-4/5 md:w-3/5">
      <div class="text-xs" v-html="text" />
    </div>
  </div>
</template>
<script>
export default {
  name: "TheTextBlock",
  props: {
    text: {
      type: String
    },
    background: {
      type: String
    },
    color: {
      type: String
    },
  },
}
</script>