class CrewController < ApplicationController
  #next thing to do is to add crewmembers to trips that they have selected.

  def crewsubmit
    @crew_params = params
    @racetitle = params[:racetitle]
    name = params[:new_crew_member_name]
    email = params[:new_crew_member_email]
    notifications = params[:new_crew_member_notifications]
    tel = params[:new_crew_member_tel]
    bio = params[:new_crew_member_bio]
    newcrew = CrewMember.new(name: name, email: email, tel: tel, bio: bio, notifications: notifications)
    newcrew.save
    crewid = newcrew.id
    # binding.pry
    #the below code grabs the selected trips that the user has selected and puts them into an array.
    @crewtrips = []
    @crew_params.keys.each do |key|
      if key.start_with?('select_trip_')
        @crewtrips << @crew_params[key]
      end
    end
    @crewtrips.each do |trip|
      relationship = TripRelationship.new(trip_id: trip, crew_member_id: crewid, status: "available")
      relationship.save
    end
  end
end
