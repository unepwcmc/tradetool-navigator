class CreateTools < ActiveRecord::Migration[5.2]
  def change
    create_table :tools do |t|
      t.string :name
      t.string :url
      t.string :organisations
      t.string :typology
      t.string :theme
      t.string :partners
      t.string :donor
      t.string :country
      t.string :tool_id
    end
  end
end
