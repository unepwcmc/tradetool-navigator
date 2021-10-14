class CreateJoinTableToolDeveloper < ActiveRecord::Migration[6.1]
  def change
      create_join_table :tools, :developers do |t|
      end
  end
end
