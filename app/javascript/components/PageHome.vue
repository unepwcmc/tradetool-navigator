<template>
  <div
    class="min-h-screen w-full grid font-sans text-xs sm:text-sm md:text-base"
  >
    <TheHero :localeContent="localeContent.hero" :logos="logos" />
    <TheTextBlock
      :background="'bg-ash'"
      :color="'black'"
      :text="textAttribution"
    />
    <slot />
    <TheTextBlock :background="'bg-ash-light'" :text="textFeedback" />
    <TheFooter :logos="logos" />
  </div>
</template>

<script>
import TheHero from './TheHero.vue'
import TheTextBlock from './TheTextBlock.vue'
import TheFooter from './TheFooter.vue'
import logos from '../data/logos.js'
import { createNamespacedHelpers } from 'vuex'
const { mapActions, mapGetters } = createNamespacedHelpers('filterableTable')

export default {
  components: {
    TheTextBlock,
    TheFooter,
    TheHero
  },

  props: {
    localeContent: {
      type: Object
    },
    textFeedback: {
      type: String
    },
    textAttribution: {
      type: String
    }
  },

  created() {
    this.$root.$on('openModal', this.updateModalTitle)
  },

  computed: {
    ...mapGetters(['options', 'modalContent'])
  },

  data: () => ({
    logos: logos
  }),

  methods: {
    ...mapActions(['updateOptions']),

    updateModalTitle({ tableId }) {
      const modalContent = this.modalContent(tableId)
      const modalTitle = modalContent.find((contentItem) => {
        return contentItem.name === 'name'
      }).value

      const oldOptions = this.options(tableId)

      const optionsConfiguration = {
        tableId,
        options: {
          ...oldOptions,
          modal: {
            ...oldOptions.modal,
            title: modalTitle
          }
        }
      }

      this.updateOptions(optionsConfiguration)
    }
  }
}
</script>
