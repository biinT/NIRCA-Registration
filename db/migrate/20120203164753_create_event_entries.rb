class CreateEventEntries < ActiveRecord::Migration
  def change
    create_table :event_entries do |t|
      t.integer :event_id
      t.text :runners

      t.timestamps
    end
  end
end
