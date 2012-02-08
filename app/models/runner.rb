class Runner < ActiveRecord::Base
  belongs_to :team
  belongs_to :user
  validates_uniqueness_of :user_id
  
  attr_accessible :first_name, :last_name

  
end
