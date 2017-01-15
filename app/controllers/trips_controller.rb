class TripsController < ApplicationController

# before_action :load_activities, only: [:index, :show, :new, :edit]
# private

  def load_activities
    @activities = PublicActivity::Activity.order('created_at DESC').limit(20)
  end

  def new
  end

  def create
    @trip = Trip.new(name: params[:name], description: params[:description], tagline: params[:tagline], archived: false)
    if @trip.save
      usertrip = Usertrip.new(user_id: current_user.id, trip_id: @trip.id)
      usertrip.save

      (1..5).each do |number|
        if params["attendee#{number}_email"]
          user = User.find_by(email: params["attendee#{number}_email"])
          if user
            usertrip = Usertrip.new(user_id: user.id, trip_id: @trip.id)
            usertrip.save
          end
        end
      end
      redirect_to "/trips/#{@trip.id}"
    else
      redirect_to "/trips/new"
    end
  end
  

  def show
    
    @stops = Trip.find_by(id: params[:id]).stops
    @trip = Trip.find_by(id: params[:id])
    @comments = Comment.where(commentable_id: params[:id], commentable_type: "Trip")
   


  end

  def edit
  end

  def archive
    @trip = Trip.find_by(id: params[:id])
    @trip.archived = true
    @trip.save
    redirect_to '/'
  end

end
