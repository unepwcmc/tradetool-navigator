class CreateJoinTableToolOrganisation < ActiveRecord::Migration[6.1]
  def change
    create_join_table :tools, :organisations do |t|
    end
  end
end
