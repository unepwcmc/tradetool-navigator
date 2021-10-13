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

  has_and_belongs_to_many :users
  import_by users: :name

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
    type: 'multiple',
    show_in_table: true,
    show_in_modal: true
  
  table_attr :partners,
    title: 'Partners',
    type: 'multiple',
    show_in_table: false,
    show_in_modal: true
  
  table_attr :developers,
    title: 'Developers',
    type: 'multiple',
    show_in_table: false,
    show_in_modal: false

  table_attr :donors,
    title: 'Donors',
    type: 'multiple',
    show_in_table: false,
    show_in_modal: false

  table_attr :typologies,
    title: 'Typology',
    filter_on: true,
    legend_on: true,
    type: 'multiple',
    show_in_table: true,
    show_in_modal: true

  table_attr :keywords,
    title: 'Keywords',
    filter_on: true,
    type: 'multiple',
    show_in_table: true,
    show_in_modal: true

  table_attr :descriptions,
    title: 'Description',
    type: 'single',
    show_in_table: false,
    show_in_modal: true

  table_attr :countries,
    title: 'Country',
    type: 'multiple',
    show_in_table: false,
    show_in_modal: true
  
  table_attr :spatial_scale,
    title: 'Spatial Scale',
    filter_on: true,
    type: 'single',
    show_in_table: false,
    show_in_modal: true
  
  table_attr :frequncies,
    title: 'Update frequency',
    type: 'single',
    show_in_table: false,
    show_in_modal: true
  
  table_attr :users,
    title: 'Intended users',
    type: 'multiple',
    filter_on: true, 
    show_in_table: false,
    show_in_modal: true
  
  table_attr :contacts,
    title: 'Country',
    type: 'single',
    show_in_table: false,
    show_in_modal: false
  
  table_attr :tool_id,
    title: 'Unique ID',
    type: 'single',
    show_in_table: false,
    show_in_modal: false
  
end
