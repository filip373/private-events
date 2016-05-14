class Event < ActiveRecord::Base
  belongs_to(:creator, class_name: 'User')
  has_many(:events_attendees)
  has_many(:attendees, through: :events_attendees)

  scope :past, -> (a_date) { where('date < ?', a_date) }
  scope :upcoming, -> (a_date) { where('date >= ?', a_date) }
end
