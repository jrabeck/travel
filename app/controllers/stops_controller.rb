class StopsController < ApplicationController

	def index
  @stops = Stop.all
  @stop = Stop.find_by(id: params[:id])
  end

  def show
  @stop = Stop.find_by(id: params[:id])
  @trip = @stop.trip
  # @trip = Trip.includes(:stops).where(stop_id: "#{@stop.id}")
  @near = Stop.near('Arlington, VA, US', 100)
  @near2 = @stop.nearbys(30)
  @images = Image.where(stop_id: params[:id])
  @images_first = @images.first
  @comments = Comment.where(commentable_id: params[:id], commentable_type: "Stop")
  @userstops = []
  Usertrip.where(trip_id: @trip.id).each do |usertrip|
    @userstops << usertrip.user_id
  end
  @blogentries = Blogentry.where(blogable_id: params[:id], blogable_type: "Stop") 
  end

  def create
    if params[:start_date]["start_date(1i)"] != ""
    start_date = Date.new(params[:start_date]["start_date(1i)"].to_i, params[:start_date]["start_date(2i)"].to_i, params[:start_date]["start_date(3i)"].to_i)
    end
    if params[:end_date]["end_date(1i)"] != ""
    end_date = Date.new(params[:end_date]["end_date(1i)"].to_i, params[:end_date]["end_date(2i)"].to_i, params[:end_date]["end_date(3i)"].to_i)
    end
  	@stop = Stop.new(name: params[:name], address: params[:address], order: params[:order], description: params[:description], trip_id: params[:id], archived: false, start_date: start_date, end_date: end_date)
  	if @stop.save
  	flash[:success] = "Place added!"
  	redirect_to "/trips/#{params[:id]}"
  	else render 'new'
  	end
	end

  def new
    @stop = Stop.new
  end

  def delete
  end

  def archive
  @stop = Stop.find_by(id: params[:id])
  @trip = @stop.trip
  @stop = Stop.find_by(id: params[:id])
  @stop.archived = true
  @stop.save
  redirect_to "/trips/#{@trip.id}"
  end

  def unarchive
  @stop = Stop.find_by(id: params[:id])
  @stop.archived = false
  @stop.save
  redirect_to "/stops/#{@stop.id}"
  end
  
  # private
  # def place_params
  #   params.require(:place).permit(:title, :address, :visited_by)
  # end

end

