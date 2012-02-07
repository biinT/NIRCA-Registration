class Event < ActiveRecord::Base
  belongs_to :race
  has_many :event_entries
  
end
