class CreateJoinTableToolCountry < ActiveRecord::Migration[6.1]
  def change
    create_join_table :tools, :countries do |t|
    end
  end
end
