class RemoveSpatialScaleFromTool < ActiveRecord::Migration[6.1]
  def change
    remove_column :tools, :field_name, :string
  end
end
