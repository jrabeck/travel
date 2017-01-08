class StopsController < ApplicationController

	def index
    @stops = Stop.all
    @stop = Stop.find_by(id: params[:id])
  end

  def show
    @stop = Stop.find_by(id: params[:id])
    @trip = Trip.find_by(id: [@stop.trip_id])
    @near = Stop.near('Arlington, VA, US', 100)
    @near2 = @stop.nearbys(30)
    @images = Image.where(stop_id: params[:id])
    @images_first = @images.first
  end

  def create
  	@stop = Stop.new(name: params[:name], address: params[:address], order: params[:order], description: params[:description], trip_id: params[:id])
  	if @stop.save
  	flash[:success] = "Place added!"
  	redirect_to "/trips/#{params[:id]}"
  	else render 'new'
  	end
	end

  def new
    @stop = Stop.new
  end

  # private
  # def place_params
  #   params.require(:place).permit(:title, :address, :visited_by)
  # end

end

