class CreateEventsAttendees < ActiveRecord::Migration
  def change
    create_table :events_attendees do |t|
      t.references :event, index: true, foreign_key: true
      t.references :attendee, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
