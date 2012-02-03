class EventEntry < ActiveRecord::Base
  belongs_to :event
  serialize :runners, Array
end
