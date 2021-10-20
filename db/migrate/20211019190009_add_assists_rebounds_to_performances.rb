class AddAssistsReboundsToPerformances < ActiveRecord::Migration[6.1]
  def change
    add_column :performances, :assists, :integer
    add_column :performances, :rebounds, :integer
  end
end
