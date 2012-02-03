class Team < ActiveRecord::Base
  has_many :runners
  has_and_belongs_to_many :races
end
