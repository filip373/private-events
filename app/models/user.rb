class User < ActiveRecord::Base
  has_secure_password
  has_many(:created_events, class_name: 'Event', foreign_key: 'creator_id')
end
