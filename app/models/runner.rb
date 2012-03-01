class Runner < ActiveRecord::Base
  belongs_to :team
  belongs_to :user
  
  
  attr_accessible :first_name, :last_name
  validates_presence_of :first_name, :last_name
  
end
