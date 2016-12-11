class StopsController < ApplicationController

  def locations_show
    @location = Stops.find_by(id: params[:id])
  end

  def locations_create
  end

end
