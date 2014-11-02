class TripsController < ApplicationController
  respond_to :html, :xml, :json
  before_action :set_trip, only: [:show, :edit, :update, :destroy]


  def index
    flash[:notice] = "hi johnnn"
    @trips = Trip.all
    respond_with(@trips)
  end

  def show
    respond_with(@trips)
  end

  def crewboard
    @new_crew = CrewMember.new
    @race_to_show = Race.find params[:race]
    # getting the objects for that particular race
    @crew_board = Trip.where(race: @race_to_show)
  end

  # POST /trips/race/2/confirm
  #Mark's Method
  # def confirm
  #   @params_to_pass_on_as_hidden_inputs = []
  #   params.keys.each do |key|
  #     if key.starts_with('select_trip_')
  #       @params_to_pass_on_as_hidden_inputs << key
  #     end
  #   end
  #   params[:select_trip_2]
  #   params[:select_trip_5]
  #   params[:select_trip_9]
  # end

  def new
    @trip = Trip.new
    respond_with(@trip)
  end

  def edit
  end

  def create
    @trip = Trip.new(trip_params)
    # TODO: Save may not save!!!
    if @trip.save
      respond_with(@trip)
    else
      flash[:error] = 'ohhh nooo!!'
    end
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
