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
#  filter_on :organisation, type: 'single', title: 'Organisations'

  # table_column :name, title: 'Name'
 # table_column :organisation, title: 'Organisations'
  # table_column :url, title: 'URL'
#  table_column :created_at, title: 'Country'
end
