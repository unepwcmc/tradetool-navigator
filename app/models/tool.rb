require 'csv'
require 'wcmc_components'

class Tool < ApplicationRecord
  include WcmcComponents::Loadable
  include WcmcComponents::Filterable

  has_and_belongs_to_many :countries
  import_by countries: :name

  has_and_belongs_to_many :typologies
  import_by typologies: :name

  has_and_belongs_to_many :partners
  import_by partners: :name

  has_and_belongs_to_many :donors
  import_by donors: :name

  table_attr :name,
    title: 'Name',
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

  table_attr :typologies,
    title: 'Typology',
    # filter_on: true,
    type: 'multiple',
    show_in_table: true,
    show_in_modal: true

  table_attr :theme,
    title: 'Theme',
    filter_on: true,
    type: 'single',
    show_in_table: true,
    show_in_modal: true
    
  table_attr :partners,
    title: 'Partners',
    type: 'multiple',
    show_in_table: false,
    show_in_modal: true
  
  table_attr :donors,
    title: 'Donors',
    type: 'multiple',
    show_in_table: false,
    show_in_modal: true

  table_attr :countries,
    title: 'Country',
    type: 'multiple',
    show_in_table: false,
    show_in_modal: true

  table_attr :tool_id,
    title: 'ID',
    type: 'single',
    show_in_table: false,
    show_in_modal: true
  
end
