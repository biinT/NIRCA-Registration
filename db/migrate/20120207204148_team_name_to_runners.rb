class TeamNameToRunners < ActiveRecord::Migration
  def up
    add_column :runners, :team_name, :string
  end

  def down
    remove_column :runners, :team_name
  end
end