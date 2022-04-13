class CreateSpatialScales < ActiveRecord::Migration[6.1]
  def change
    create_table :spatial_scales do |t|
      t.string :name

      t.timestamps
    end
  end
end
