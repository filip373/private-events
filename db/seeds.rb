# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
user = User.create!(email: 'asd@asd.asd', password: 'asd')
second_user = User.create!(email: 'qwe@qwe.qwe', password: 'qwe')
third_user = User.create!(email: 'zxc@zxc.zxc', password: 'zxc')
user.created_events.create!(title: 'Example event', location: 'London', date: 4.weeks.since)
user.created_events.create!(title: 'Another event', location: 'Warsaw', date: 2.weeks.ago)
user.created_events.first.events_attendees.create!(attendee: second_user)
user.created_events.first.events_attendees.create!(attendee: third_user)
user.created_events[1].events_attendees.create!(attendee: third_user)
