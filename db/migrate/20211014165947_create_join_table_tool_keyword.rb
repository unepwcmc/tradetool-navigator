class CreateJoinTableToolKeyword < ActiveRecord::Migration[6.1]
  def change
    create_join_table :tools, :keywords do |t|
    end
  end
end
