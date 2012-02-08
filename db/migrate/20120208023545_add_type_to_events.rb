class AddTypeToEvents < ActiveRecord::Migration
  def change
    add_column :events, :relay, :boolean
  end
end
