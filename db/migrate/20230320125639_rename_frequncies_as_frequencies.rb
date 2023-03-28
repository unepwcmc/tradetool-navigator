class RenameFrequnciesAsFrequencies < ActiveRecord::Migration[6.1]
  def change
    rename_column :tools, :frequncies, :frequencies
  end
end
