class PagesController < ApplicationController
  def index
    @filterable_table_props = {
      attributes: Tool.columns_to_json,
      endpoint: tools_table_path,
      endpoint_download: '/tools/download',
      filter_array: Tool.table_filters_with_options.to_json,
      legend_array: Tool.table_legends_with_options.to_json,
      options: helpers.filterableTableOptions
    }
  end

  def list
    @tools = Tool.paginate(params.to_json)

    render json: @tools
  end

  def terms; end

  def about; end

  def glossary; end
end
