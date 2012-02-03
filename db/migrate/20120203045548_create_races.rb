class CreateRaces < ActiveRecord::Migration
  def change
    create_table :races do |t|
      t.string :name
      t.string :location
      t.integer :team_id

      t.timestamps
    end
  end
end
