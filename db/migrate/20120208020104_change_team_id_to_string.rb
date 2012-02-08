class ChangeTeamIdToString < ActiveRecord::Migration
  def up
    change_column :runners, :team_id, :integer
  end

  def down
    change_column :runners, :team_id, :string
  end
end