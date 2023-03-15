require 'csv'
require 'wcmc_components'

class Tool < ApplicationRecord
  include WcmcComponents::Loadable
  include WcmcComponents::Filterable

    
  has_and_belongs_to_many :organisations
  import_by organisations: :name

  has_and_belongs_to_many :partners
  import_by partners: :name
  
  has_and_belongs_to_many :developers
  import_by developers: :name
  
  has_and_belongs_to_many :donors
  import_by donors: :name

  has_and_belongs_to_many :typologies
  import_by typologies: :name

  has_and_belongs_to_many :keywords
  import_by keywords: :name

  has_and_belongs_to_many :countries
  import_by countries: :name

  has_and_belongs_to_many :spatial_scales
  import_by spatial_scales: :name

  has_and_belongs_to_many :users
  import_by users: :name

  table_attribute :name,
    title: 'Initiative',
    type: 'single',
    show_in_table: true,
    show_in_modal: true,
    show_in_csv: true

  table_attribute :url,
    title: 'URL',
    type: 'single',
    show_in_table: true,
    show_in_modal: true,
    show_in_csv: true
    
  table_attribute :organisations,
    title: 'Lead organisation',
    type: 'multiple',
    show_in_table: false,
    show_in_modal: true,
    show_in_csv: true
  
  table_attribute :partners,
    title: 'Partners',
    type: 'multiple',
    show_in_table: false,
    show_in_modal: false,
    show_in_csv: false
  
  table_attribute :developers,
    title: 'Developers',
    type: 'multiple',
    show_in_table: false,
    show_in_modal: false,
    show_in_csv: false

  table_attribute :donors,
    title: 'Donors',
    type: 'multiple',
    show_in_table: false,
    show_in_modal: false,
    show_in_csv: false

  table_attribute :typologies,
    title: 'Typology',
    filter_on: true,
    legend_on: true,
    type: 'multiple',
    show_in_table: true,
    show_in_modal: true,
    show_in_csv: true

  table_attribute :keywords,
    title: 'Commodity focus ',
    filter_on: true,
    type: 'multiple',
    show_in_table: true,
    show_in_modal: true,
    show_in_csv: true

  table_attribute :descriptions,
    title: 'Description',
    type: 'single',
    show_in_table: false,
    show_in_modal: true,
    show_in_csv: true

  table_attribute :countries,
    title: 'Country',
    type: 'multiple',
    show_in_table: false,
    show_in_modal: false,
    show_in_csv: false
  
  table_attribute :spatial_scales,
    title: 'Scope',
    filter_on: true,
    type: 'multiple',
    show_in_table: false,
    show_in_modal: true,
    show_in_csv: true
  
  table_attribute :frequncies,
    title: 'Update frequency',
    type: 'single',
    show_in_table: false,
    show_in_modal: false,
    show_in_csv: true
  
  table_attribute :users,
    title: 'Intended users',
    type: 'multiple',
    filter_on: true, 
    show_in_table: false,
    show_in_modal: true,
    show_in_csv: true
  
  table_attribute :contacts,
    title: 'Country',
    type: 'single',
    show_in_table: false,
    show_in_modal: false,
    show_in_csv: false
  
  table_attribute :tool_id,
    title: 'Unique ID',
    type: 'single',
    show_in_table: false,
    show_in_modal: false,
    show_in_csv: false
  
end
