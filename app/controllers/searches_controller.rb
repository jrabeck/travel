class SearchesController < ApplicationController

	def all
    @search_term = params[:search]
    @trips = Trip.where("name ILIKE ?", "%#{@search_term}%")
    @users = User.where("first_name ILIKE ?", "%#{@search_term}%")
    @stops = Stop.where("name ILIKE ?", "%#{@search_term}%")
    if current_user
      @trips = current_user.trips
    end
  end

  def users
  	@search_term = params["searchterm"]
  	@users = User.where("first_name ILIKE ?", "%#{@search_term}%") 
  end



end