class CreateTeams < ActiveRecord::Migration[6.1]
  def change
    create_table :teams do |t|
      t.string :name
      t.string :slogan
      t.string :image_url
      t.timestamps
    end
  end
end
