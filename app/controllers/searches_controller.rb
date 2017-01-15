class SearchesController < ApplicationController

	def all
    @search_term = params[:search]
    @trips = Trip.where("name LIKE ?", "%#{@search_term}%")
    @users = User.where("first_name LIKE ?", "%#{@search_term}%")
    @stops = Stop.where("name LIKE ?", "%#{@search_term}%")
  end

  def people
  	@search_term = params[:search]
  	@person = User.where("name LIKE ?", "%#{@search_term}") 
  end



end