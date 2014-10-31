class SkipperController < ApplicationController
  def crewmanager
    @trip = current_user.trips.first
    @available_crew = @trip.crew_members
  end
end
