class HomeController < ApplicationController
  def index
    @filterable_table_props = {
      attributes: Tool.columns_to_json,
      endpoint: tools_table_path,
      endpoint_download: '/tools/download',
      filter_array: Tool.filters_to_json,
      options: helpers.filterableTableOptions
    }
  end

  def list
    @tools = Tool.paginate(params.to_json)

    render json: @tools
  end
end
