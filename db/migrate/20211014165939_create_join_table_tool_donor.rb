class CreateJoinTableToolDonor < ActiveRecord::Migration[6.1]
  def change
      create_join_table :tools, :donors do |t|
      end
  end
end
