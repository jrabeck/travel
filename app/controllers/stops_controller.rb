class StopsController < ApplicationController

  def show
    @stop = Stop.find_by(id: params[:id])
  end

  def create

  	stop = Stop.new(name: params[:name], address: params[:address], order: params[:order], description: params[:description], trip_id: params[:id])
  	stop.save
  	redirect_to "/trips/#{params[:id]}"
  end

end
