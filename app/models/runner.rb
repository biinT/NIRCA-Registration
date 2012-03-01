class Runner < ActiveRecord::Base
  belongs_to :team
  belongs_to :user
  
  
  attr_accessible :first_name, :last_name

  
end
