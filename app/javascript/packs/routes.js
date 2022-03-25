import TermsAndConditions from '../components/TermsAndConditions.vue'
import FilterableTableVue from '../components/FilterableTableVue.vue'

export default [
  {
    path: "/",
    name: "PageHome",
    component: FilterableTableVue,
  },
  {
    path: "/terms-conditions",
    name: "TermsAndConditions",
    component: TermsAndConditions
  }
]
