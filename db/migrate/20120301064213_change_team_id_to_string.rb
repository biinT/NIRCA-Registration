class ChangeTeamIdToString < ActiveRecord::Migration
  def up
    change_column(:event_entries, :team_id, :string)
  end

  def down
  end
end
