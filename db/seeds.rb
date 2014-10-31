# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

Race.create race_date:"2014-11-01 14:00:00", race_name: "Jasmin 2",  race_description: "Jasmin 2", race_location: "Port Shelter"
Race.create race_date:"2014-11-08 14:00:00", race_name: "Passage Race",  race_description: "Passage Race", race_location: "Port Shelter"
Race.create race_date:"2014-11-15 14:00:00", race_name: "Lipton Trophy",  race_description: "Lipton Trophy", race_location: "Harbour"
Race.create race_date:"2014-11-16 14:00:00", race_name: "Around The Island Race",  race_description: "Race around the Island", race_location: "Harbour"
Race.create race_date:"2014-11-22 14:00:00", race_name: "Passage Race",  race_description: "Passage Race", race_location: "Port Shelter"
Race.create race_date:"2014-11-29 14:00:00", race_name: "Class Champs 1",  race_description: "Class Championships", race_location: "Harbour"


t1 = Trip.create boat_name: "Black Magic", trip_organizer: nil, trip_description: "Jasmin 2", trip_attendees: 1, trip_attendee_limit: "4", race_id: 2
t2 = Trip.create boat_name: "Ironman", trip_organizer: nil, trip_description: "Jasmin 2", trip_attendees: 2, trip_attendee_limit: "4", race_id: 2
t3 = Trip.create boat_name: "Fly By Wire", trip_organizer: nil, trip_description: "Jasmin 2", trip_attendees: 3, trip_attendee_limit: "4", race_id: 2
t4 = Trip.create boat_name: "Phoenix", trip_organizer: nil, trip_description: "Jasmin 2", trip_attendees: 3, trip_attendee_limit: "4", race_id: 2

c1 = CrewMember.create name: 'John', email: 'john@lok.com', tel: 12345678, bio: 'John the sailor.'
c2 = CrewMember.create name: 'Harry', email: 'harry@potter.com', tel: 12345678, bio: 'Harry the sailor'
c3 = CrewMember.create name: 'Stephen', email: 'stephen@gray.com', tel: 12345678, bio: 'Stephen the sailor'
c4 = CrewMember.create name: 'Fiona', email: 'fiona@you.com', tel: 12345678, bio: 'Fiona the sailor'
c5 = CrewMember.create name: 'Astrid', email: 'astrid@large.com', tel: 12345678, bio: 'Astrid the sailor'

TripRelationship.create trip: t1, crew_member: c1, status: 'confirmed'
TripRelationship.create trip: t1, crew_member: c2, status: 'confirmed'
TripRelationship.create trip: t1, crew_member: c1, status: 'available'
TripRelationship.create trip: t2, crew_member: c1, status: 'available'
TripRelationship.create trip: t3, crew_member: c1, status: 'available'
TripRelationship.create trip: t3, crew_member: c1, status: 'available'
TripRelationship.create trip: t3, crew_member: c2, status: 'available'
TripRelationship.create trip: t3, crew_member: c3, status: 'available'
TripRelationship.create trip: t3, crew_member: c4, status: 'available'
TripRelationship.create trip: t3, crew_member: c5, status: 'available'


