require 'csv'
require 'wcmc_components'

class Tool < ApplicationRecord
  include WcmcComponents::Loadable
  
  TABLE_ATTRIBUTES = [
    {
      title: 'Platform',
      field: 'platform'
    },
    {
      title: 'Organisations',
      field: 'organisations'
    },
    {
      title: 'Typology',
      field: 'typology'
    },
    {
      title: 'Country',
      field: 'country'
    }
  ].freeze

  FILTERS = %w[organisations typology country].freeze

  def self.filters_to_json
    sanitise_filters
    ToolPresenter.new.populate_filters
  end

  def self.paginate(json = nil)
    json_params = json.nil? ? nil : JSON.parse(json)
    page = json_params.present? ? json_params['requested_page'].to_i : 1
    @items_per_page = json_params.present? ? json_params['items_per_page'].to_i : 10
    @filter_params = nil
    if json_params.present?
      @filter_params = json_params['filters'].all? { |p| p['options'].blank? } ? [] : json_params['filters']
    end

    tools = generate_query(page, @filter_params)
    items = tools

    structure_data(page, items)
  end

  def to_hash
    {
      id: id,
      title: name,
      description: description,
      committed: committed_year,
      duration: duration,
      status: status,
      url: Rails.application.routes.url_helpers.tool_path(id),
      link: link
    }
  end

  def self.generate_query(page, filter_params)
    # if params are empty then return the paginated results without filtering
    if filter_params.empty?
      return Tool.includes(:country)
              .order(id: :asc).paginate(page: page || 1, per_page: @items_per_page)
              .to_a.map! do |tool|
                tool.to_hash
              end
    end

    # we have to do some hard work on the filtering...
    filters = filter_params.select { |hash| hash['options'].present? }
    where_params = parse_filters(filters)

    run_query(page, where_params).to_a.map! do |tool|
      tool.to_hash
    end
  end

  def self.parse_filters(filters)
    country_ids = []
    params = {}
    FILTERS.each { |filter| params[filter] = nil }

    filters.each do |filter|
      options = filter['options']
      name = filter['name']
      # if name == 'country'
      #   countries = options
      #   country_ids << Country.where(name: countries).pluck(:id)
      #   params['country'] = country_ids.flatten.empty? ? "" : "commitments.country_id IN (#{country_ids.join(',')})"
      # else
        # Single quoted strings needed for the SQL queries to work properly
        params[name] = options.empty? ? "" : "commitments.#{name} IN (#{options.map { |op| "'#{op}'" }.join(',')})"
      # end
    end

    params.compact
  end

  def self.run_query(page, where_params)
    Tool
      .from("tools")
      .where(where_params.values.join(' AND '))
      .paginate(page: page || 1, per_page: @items_per_page).order('id ASC')
  end

  def self.sanitise_filters
    # [Country].each do |model|
    #   var_name = "@#{model.to_s.underscore.pluralize}"
    #   instance_variable_set(var_name, model.pluck(:name).compact.sort - ['Data not available'])
    # end
  end

  def self.structure_data(page, items)
    {
      current_page: page,
      per_page: @items_per_page,
      total_entries: entries(items),
      total_pages: pages(items),
      items: items
    }
  end

  def self.entries(items)
    @filter_params.empty? ? Tool.count : items.count
  end

  def self.pages(items) 
    return 0 if items.count == 0

    total_pages = items.each_slice(@items_per_page).count

    if @filter_params.empty?
      total_pages = Tool.all.each_slice(@items_per_page).count
    end

    total_pages
  end
end