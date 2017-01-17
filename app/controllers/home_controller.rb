class HomeController < ApplicationController

	def home
		if current_user
			@trips = current_user.trips
			@activities = PublicActivity::Activity.where(trackable_type: ["Trip", "Stop"])
 		  @trips = Trip.all
 		  render :private
		else

			render :public
		end
	end


end



		