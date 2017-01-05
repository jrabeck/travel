class TripsController < ApplicationController

# before_action :load_activities, only: [:index, :show, :new, :edit]
# private

def load_activities
  @activities = PublicActivity::Activity.order('created_at DESC').limit(20)
end

	def new
	end

  def create
  	@trip = Trip.new(name: params[:name], description: params[:description])
  	@trip.save
      if @trip.save
    	usertrip = Usertrip.new(user_id: current_user.id, trip_id: @trip.id)
    	usertrip.save
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
