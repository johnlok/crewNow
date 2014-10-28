class TripsController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_trip, only: [:show, :edit, :update, :destroy]

  def index
    @trips = Trip.all
    respond_with(@trips)
  end

  def show
    respond_with(@trips)
  end

  def crewboard
    @racename = params[:race]
    @crew_board = Trip.where(trip_description:@racename)
    #getting the objects for that particular race
  end

  def new
    @trip = Trip.new
    respond_with(@trip)
  end

  def edit
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.save
    respond_with(@trip)
  end

  def update
    @trip.update(trip_params)
    respond_with(@trip)
  end

  def destroy
    @trip.destroy
    respond_with(@trip)
  end

  private
    def set_trip
      @trip = Trip.find(params[:id])
    end

    def trip_params
      params.require(:trip).permit(:boat_name, :trip_organizer, :trip_description, :trip_attendees, :trip_attendee_limit, :race_id)
    end
end
