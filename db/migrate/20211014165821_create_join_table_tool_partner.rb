class CreateJoinTableToolPartner < ActiveRecord::Migration[6.1]
  def change
    create_join_table :tools, :partners do |t|
    end
  end
end
