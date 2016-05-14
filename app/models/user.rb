class User < ActiveRecord::Base
  has_secure_password
  has_many(:created_events, class_name: 'Event', foreign_key: 'creator_id')
  has_many(:events_attendees, foreign_key: 'attendee_id')
  has_many(:attended_events, through: :events_attendees, source: :event)
end
