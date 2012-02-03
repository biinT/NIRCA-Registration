class CreateTeams < ActiveRecord::Migration
  def change
    create_table :teams do |t|
      t.string :school_name

      t.timestamps
    end
  end
end
