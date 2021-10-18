class CreatePerformance < ActiveRecord::Migration[6.1]
  def change
    create_table :performances do |t|
      t.integer :player_id
      t.integer :game_id
      t.integer :points
      t.timestamps
    end
  end
end
