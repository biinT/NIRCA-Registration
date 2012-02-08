class AddFirstNameLastNameToRunners < ActiveRecord::Migration
  def change
    add_column :runners, :first_name, :string
    add_column :runners, :last_name, :string
  end
end
