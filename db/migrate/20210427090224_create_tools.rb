class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.string "name"
      t.string "url"
      t.string "organisations"
      t.string "typologies"
      t.string "theme"
      t.string "partners"
      t.string "developers"
      t.string "donors"
      t.string "keywords"
      t.string "descriptions"
      t.string "spatial_scale"
      t.string "frequncies"
      t.string "countries"
      t.string "users"
      t.string "contacts"
      t.string "tool_id"
    end
  end
end
