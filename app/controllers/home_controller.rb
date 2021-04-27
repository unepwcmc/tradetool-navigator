class HomeController < ApplicationController
  DEFAULT_PARAMS =
  {
    items_per_page: 10,
    requested_page: 1,
    filters: []
  }.to_json

  def index
    @filters = Tool.filters_to_json
    @paginated = Tool.paginate(DEFAULT_PARAMS).to_json
    @table_attributes = Tool::TABLE_ATTRIBUTES.to_json
  end

  def list
    @tools = Tool.paginate_results(params.to_json)
    
    render json: @tools
  end
end
