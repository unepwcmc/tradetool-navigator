class CreateJoinTableToolSpatialScale < ActiveRecord::Migration[6.1]
  def change
    create_join_table :tools, :spatial_scales do |t|
      # t.index [:tool_id, :spatial_scale_id]
      # t.index [:spatial_scale_id, :tool_id]
    end
  end
end
