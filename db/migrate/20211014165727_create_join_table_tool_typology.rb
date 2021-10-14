class CreateJoinTableToolTypology < ActiveRecord::Migration[6.1]
  def change
    create_join_table :tools, :typologies do |t|
    end
  end
end
