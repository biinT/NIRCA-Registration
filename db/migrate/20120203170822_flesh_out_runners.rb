class FleshOutRunners < ActiveRecord::Migration
  def up
    add_column :runners, :password, :string
    add_column :runners, :hashed_password, :string
    add_column :runners, :salt, :string
  end

  def down
    remove_column :runners, :password
    remove_column :runners, :hashed_password
    remove_column :runners, :salt
  end
end
