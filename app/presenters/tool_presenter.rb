class ToolPresenter
  def populate_filters
    filters = Tool::FILTERS.map do |filter|
      {
        name: filter,
        title: filter.gsub(/_/, ' '),
        options: get_filters(filter),
        type: 'multiple'
      }
    end

    # filters.find { |filter| filter[:name] == 'committed_year' }[:title] = 'Committed'
    # filters.find { |filter| filter[:name] == 'primary_objectives' }[:title] = 'Objectives'

    filters.to_json
  end

  def get_filters(filter)
    case filter
    when 'country'
      Tool.pluck(:name).sort
    # when 'committed_year'
    #   Tool.where.not(committed_year: nil).distinct.pluck(:committed_year)
    else
      Tool.pluck(filter.to_sym).uniq.compact.map(&:squish)
    end
  end
end
