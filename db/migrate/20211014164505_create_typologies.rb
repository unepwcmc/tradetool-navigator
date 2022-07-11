class CreateTypologies < ActiveRecord::Migration[6.1]
  def change
    create_table :typologies do |t|
      t.string :name
      t.timestamps
    end
  end
end
