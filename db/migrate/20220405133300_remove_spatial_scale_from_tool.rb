class RemoveSpatialScaleFromTool < ActiveRecord::Migration[6.1]
  def change
    remove_column :tools, :spatial_scale, :string
  end
end
