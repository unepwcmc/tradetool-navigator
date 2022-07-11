class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.string "name"
      t.string "url"
      t.string "theme"
      t.string "descriptions"
      t.string "spatial_scale"
      t.string "frequncies"
      t.string "contacts"
      t.string "tool_id"
    end
  end
end
