class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.integer :race_id
      t.integer :distance
      t.string :units
      t.string :name

      t.timestamps
    end
  end
end
