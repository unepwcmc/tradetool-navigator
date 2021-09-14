require 'csv'
require 'wcmc_components'

class Tool < ApplicationRecord
  include WcmcComponents::Loadable
  include WcmcComponents::Filterable

  ignore_column 'Organisations'
  ignore_column 'Country'

  table_attr :name,
    filter_on: true,
    type: 'single',
    title: 'Name',
    show_in_table: true,
    show_in_modal: true

  table_attr :url,
    title: 'URL',
    show_in_table: true,
    show_in_modal: false
end
