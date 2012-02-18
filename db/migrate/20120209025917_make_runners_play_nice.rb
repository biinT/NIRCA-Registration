class MakeRunnersPlayNice < ActiveRecord::Migration
  def up
    remove_column :runners, :team_id
    add_column :runners, :team_id, :integer
  end

  def down
  end
end