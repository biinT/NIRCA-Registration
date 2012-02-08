class AddTeamIdToUsers < ActiveRecord::Migration
  def change
    add_column :users, :team_id, :string
  end
end