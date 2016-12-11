class TripsController < ApplicationController

  def show
    @stops = trip.find_by(id: params[:id]).stops
  end

  def create
  end

  def edit
  end

  def destroy
  end

end
