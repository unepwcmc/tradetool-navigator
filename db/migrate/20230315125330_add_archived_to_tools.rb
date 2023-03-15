class AddArchivedToTools < ActiveRecord::Migration[6.1]
  def change
    add_column :tools, :archived, :boolean, default: 0
  end
end
