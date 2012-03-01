class AddTeamIdToEventEntries < ActiveRecord::Migration
  def change
    add_column :event_entries, :team_id, :integer
  end
end
