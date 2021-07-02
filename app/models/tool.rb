require 'csv'
require 'wcmc_components'

class Tool < ApplicationRecord
  include WcmcComponents::Loadable
  
  filter_on :name, type: 'single', title: 'Name'
  filter_on :organisation, type: 'single', title: 'Organisations'

  table_column :created_at, title: 'Name'
  table_column :created_at, title: 'Organisations'
  table_column :created_at, title: 'URL'
  table_column :created_at, title: 'Country'
end