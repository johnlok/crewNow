class SkipperController < ApplicationController

  def crewmanager
    @trip = current_user.trips.first
    @available_crew = @trip.crew_members.references( :trip_relationships ).where( trip_relationships: { status: "available" })
    @confirmed_crew = @trip.crew_members.references( :trip_relationships ).where( trip_relationships: { status: "confirmed" })
  end

  def crewconfirm
    @trip = current_user.trips.first
    @confirmparams = params
    @crewtoconfirm = [] #ids of the crew to confirm
    @confirmparams.keys.each do |key|
      if key.start_with?('confirm_')
        @crewtoconfirm << @confirmparams[key]
      end
    end
    @crewtoconfirm.each do |crew|
      TripRelationship.where(crew_member_id:crew,trip_id:@trip.id).first.update(status: "confirmed")
    end





  # UserMailer.confirmation_email(current_user).deliver
  end

end
