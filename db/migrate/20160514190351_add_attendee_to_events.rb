class AddAttendeeToEvents < ActiveRecord::Migration
  def change
    add_reference :events, :attendee, index: true, foreign_key: true
  end
end
