class CreateTrips < ActiveRecord::Migration
  def change
    create_table :trips do |t|
      t.string :boat_name
      t.string :trip_organizer
      t.string :trip_description
      t.integer :trip_attendees
      t.integer :trip_attendee_limit
      t.integer :race_id

      t.timestamps
    end
  end
end
