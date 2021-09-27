require 'csv'
require 'wcmc_components'

class Tool < ApplicationRecord
  include WcmcComponents::Loadable
  include WcmcComponents::Filterable

  ignore_column 'Organisations'
  ignore_column 'Country'

  table_attr :name,
    title: 'Name',
    filter_on: true,
    type: 'single',
    show_in_table: true,
    show_in_modal: true

  table_attr :url,
    title: 'Resource',
    type: 'single',
    show_in_table: true,
    show_in_modal: true
    
  table_attr :organisations,
    title: 'Lead organisation',
    filter_on: true,
    type: 'single',
    show_in_table: true,
    show_in_modal: true
end
