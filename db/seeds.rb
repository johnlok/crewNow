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
Race.create race_date:"2014-11-29 14:00:00", race_name: "Class Champs 1",  race_description: "Class Championships", race_location: "Clear Water Bay"
Race.create race_date:"2014-12-06 12:30:00", race_name: "Class Champs 2 ", race_location: "Clear Water Bay"
Race.create race_date:"2015-01-10 12:30:00", race_name: "Tomes Cup ", race_location: "Harbor"
Race.create race_date:"2015-01-25 12:30:00", race_name: "Twinings 1 ", race_location: "Port Shelter"
Race.create race_date:"2015-02-01 12:30:00", race_name: "Twinings 2 ", race_location: "Port Shelter"
Race.create race_date:"2015-02-28 12:30:00", race_name: "Earl Grey 1 ", race_location: "Port Shelter"
Race.create race_date:"2015-03-07 12:30:00", race_name: "Class Regatta ", race_location: "Port Shelter"
Race.create race_date:"2015-03-08 12:30:00", race_name: "Class Regatta ", race_location: "Port Shelter"
Race.create race_date:"2015-03-14 12:30:00", race_name: "Earl Grey 2 ", race_location: "Port Shelter"
Race.create race_date:"2015-03-21 12:30:00", race_name: "Orange Pekoe 1 ", race_location: "Port Shelter"
Race.create race_date:"2015-03-28 12:30:00", race_name: "Orange Pekoe 2 ", race_location: "Port Shelter"
Race.create race_date:"2015-04-18 12:30:00", race_name: "Presidents Bell 1 ", race_location: "Port Shelter"
Race.create race_date:"2015-04-25 12:30:00", race_name: "Passage Race ", race_location: "Port Shelter - Harbor"
Race.create race_date:"2015-05-01 12:30:00", race_name: "HKRNVR Vase ", race_location: "Harbor"
Race.create race_date:"2015-05-02 12:30:00", race_name: "Nations' Cup", race_location: "Harbor"
Race.create race_date:"2015-05-09 12:30:00", race_name: "Presidents Bell 2 ", race_location: "Harbor"
Race.create race_date:"2015-05-16 12:30:00", race_name: "Spring Regatta ", race_location: "Harbor"
Race.create race_date:"2015-05-17 12:30:00", race_name: "Spring Regatta ", race_location: "Harbor"
Race.create race_date:"2015-05-23 12:30:00", race_name: "Passage Race ", race_location: "Harbor - Port Shelter"
Race.create race_date:"2015-05-30 12:30:00", race_name: "Presidents Bell 3  & Prizegiving", race_location: "Port Shelter"


t1 = Trip.create boat_name: "Black Magic", trip_organizer: nil, trip_description: "Jasmin 2", trip_attendees: 1, trip_attendee_limit: "4", race_id: 1, user_id:2
t2 = Trip.create boat_name: "Ironman", trip_organizer: nil, trip_description: "Jasmin 2", trip_attendees: 2, trip_attendee_limit: "4", race_id: 1, user_id:3
t3 = Trip.create boat_name: "Fly By Wire", trip_organizer: nil, trip_description: "Jasmin 2", trip_attendees: 3, trip_attendee_limit: "4", race_id: 1, user_id:1
t4 = Trip.create boat_name: "Phoenix", trip_organizer: nil, trip_description: "Jasmin 2", trip_attendees: 3, trip_attendee_limit: "4", race_id: 1, user_id:1
t5 = Trip.create boat_name: "Black Magic", trip_organizer: nil, trip_description: "Jasmin 2", trip_attendees: 1, trip_attendee_limit: "4", race_id: 2, user_id:2
t6 = Trip.create boat_name: "Ironman", trip_organizer: nil, trip_description: "Jasmin 2", trip_attendees: 2, trip_attendee_limit: "4", race_id: 2, user_id:3
t7 = Trip.create boat_name: "Fly By Wire", trip_organizer: nil, trip_description: "Jasmin 2", trip_attendees: 3, trip_attendee_limit: "4", race_id: 2, user_id:1
t8 = Trip.create boat_name: "Phoenix", trip_organizer: nil, trip_description: "Jasmin 2", trip_attendees: 3, trip_attendee_limit: "4", race_id: 2, user_id:1

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


