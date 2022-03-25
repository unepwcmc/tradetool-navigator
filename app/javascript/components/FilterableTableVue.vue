<template>  
  <div class="bg-green-600 h-40">
    Filterable table here !!!!!
    <FilterableTable />
</div>
</template>

<script>

import axios from "axios"
import FilterableTable from '@unep-wcmc/wcmc-components'

export default {
  name: "FilterableTableVue",
  components: {
    FilterableTable
  },

  data () {
    return {
      items: {}
    }
  },

  created () {
    axios
      .get('/')
      .then((response) => {
        this.items = response.data
        console.log(response.data)
      })
      .catch((error) => {
        console.log(error.response)
      })
  }
}
</script>