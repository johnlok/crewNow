json.array!(@trips) do |trip|
  json.extract! trip, :id, :boat_name, :trip_organizer, :trip_description, :trip_attendees, :trip_attendee_limit, :race_id
  json.url trip_url(trip, format: :json)
end
