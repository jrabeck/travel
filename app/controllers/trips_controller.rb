class TripsController < ApplicationController

# before_action :load_activities, only: [:index, :show, :new, :edit]
# private

  def load_activities
    @activities = PublicActivity::Activity.order('created_at DESC').limit(20)
  end

  def new
  end

  def create
    if params[:start_date]["start_date(1i)"] != ""
    start_date = Date.new(params[:start_date]["start_date(1i)"].to_i, params[:start_date]["start_date(2i)"].to_i, params[:start_date]["start_date(3i)"].to_i)
    end
    if params[:end_date]["end_date(1i)"] != ""
    end_date = Date.new(params[:end_date]["end_date(1i)"].to_i, params[:end_date]["end_date(2i)"].to_i, params[:end_date]["end_date(3i)"].to_i)
    end
    @trip = Trip.new(name: params[:name], description: params[:description], tagline: params[:tagline], archived: false, start_date: start_date, end_date: end_date)
    if @trip.save
      usertrip = Usertrip.new(user_id: current_user.id, trip_id: @trip.id, admin: true)
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
    @blogentries = Blogentry.where(blogable_id: params[:id], blogable_type: "Trip")
    @admins = []
    Usertrip.where(trip_id: params[:id]).where(admin: true).each do |admin|
      @admins << admin.user_id
    end
    @usertrips = []
    Usertrip.where(trip_id: params[:id]).each do |usertrip|
      @usertrips << usertrip.user_id
    end
    @stopcoordinates = []
    @trip.stops.order(order: :desc).each do |stop|
    if stop.latitude 
    @stopcoordinates << stop 
    end
    end 

  end

  def adduser
    # usertrip = Usertrip.new(user_id: ????? trip_id: params[:id])
  end


  def edit
    @trip = Trip.find_by(id: params[:id])
  end

  def archive
    @trip = Trip.find_by(id: params[:id])
    @trip.archived = true
    @trip.save
    redirect_to '/'
  end

  def unarchive
  @trip = Trip.find_by(id: params[:id])
  @trip.archived = false
  @trip.save
  redirect_to "/trips/#{@trip.id}"
  end

  def update
    @trip = Trip.find_by(id: params[:id]) 
    @trip.name = params[:name]
    @trip.description = params[:description]
    @trip.tagline = params[:tagline] 
    @trip.save 
    redirect_to "/trips/#{@trip.id}"
  end


end
