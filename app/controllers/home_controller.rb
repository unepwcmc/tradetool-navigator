class HomeController < ApplicationController
  def index
    @filterable_table_props = {
      attributes: Tool.columns_to_json,
      endpoint: tools_table_path,
      endpoint_download: '/tools/download',
      filter_array: Tool.attributes_to_json('filters'),
      legend_array: Tool.attributes_to_json('legends'),
      options: helpers.filterableTableOptions
    }
    respond_to do |format|
      format.html
      format.json { render json: @filterable_table_props }
    end
  end

  def list
    @tools = Tool.paginate(params.to_json)

    render json: @tools
  end
end
