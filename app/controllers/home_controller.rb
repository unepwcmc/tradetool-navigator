class HomeController < ApplicationController
  DEFAULT_PARAMS =
  {
    items_per_page: 10,
    requested_page: 1,
    filters: []
  }.to_json

  def index
    filters = Tool.filters_to_json
    paginated = Tool.paginate(DEFAULT_PARAMS)
    table_attributes = Tool.columns_to_json

    @filterable_table_props = {
      attributes: table_attributes.to_json,
      endpoint: '/tools/list',
      endpoint_download: 'TODO',
      filter_array: filters ,
      paginated_rows: paginated[:items],
      options: helpers.filterableTableOptions
    }
  end

  def list
    @tools = Tool.paginate(params.to_json)
    
    render json: @tools
  end
end
