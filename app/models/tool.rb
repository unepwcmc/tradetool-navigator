require 'csv'
require 'wcmc_components'

class Tool < ApplicationRecord
  include WcmcComponents::Loadable
  include WcmcComponents::Filterable

  ignore_column 'Organisations'
  ignore_column 'Country'
  
  filter_on :name, type: 'single', title: 'Name'
#  filter_on :organisation, type: 'single', title: 'Organisations'

  table_column :name, title: 'Name'
 # table_column :organisation, title: 'Organisations'
  table_column :url, title: 'URL'
#  table_column :created_at, title: 'Country'
end
