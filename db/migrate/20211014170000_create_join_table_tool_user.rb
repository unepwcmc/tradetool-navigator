class CreateJoinTableToolUser < ActiveRecord::Migration[6.1]
  def change
      create_join_table :tools, :users do |t|
      end
  end
end
