class ImagesController < ApplicationController

  def index
  end

  def show
  end

  def new  
  end

  def create
   @image = Image.create(images_params)
    if params[:stop_id]
      redirect_to "/stops/#{params[:stop_id]}"
    elsif params[:trip_id]
      redirect_to "/trips/#{params[:trip_id]}"
    elsif params[:user_id]
      redirect_to "users/#{params[:user_id]}"
    end
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def trip_index
  end

  private
  def images_params
    params.permit(:stop_id, :user_id, :trip_id, :url, :prf_pic_id, :description, :tagline, :archived)
  end

end
