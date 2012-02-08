class IntegrateRunnersAndUsers < ActiveRecord::Migration
  def up
    remove_column :runners, :password
    remove_column :runners, :hashed_password
    remove_column :runners, :salt
    add_column :runners, :user_id, :integer
  end

  def down
  end
end