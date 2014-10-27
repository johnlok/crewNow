class RaceController < ApplicationController
  def show
    @race = Race.all
  end
end
