class TripsController < ApplicationController

	def new
	end

  def create
  	@trip = Trip.new(name: params[:name], description: params[:description])
  	@trip.save
      if @trip.save
    	usertrip = Usertrip.new(user_id: current_user.id, trip_id: @trip.id)
    	usertrip.save
        if params[:attendee_id]
          usertrip1 = Usertrip.new(user_id: params[:attendee_id], trip_id: @trip.id)
          usertrip1.save
        end
    	redirect_to "/trips/#{@trip.id}"
      else
      redirect_to "/trips/new"
    end
  end

  def show
    @stops = Trip.find_by(id: params[:id]).stops
    @trip = Trip.find_by(id: params[:id])
  end

  def edit
  end

  def destroy
  end

end
