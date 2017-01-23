class HomeController < ApplicationController

	def home
		if current_user
			@trips = current_user.trips
			# if params[:page]
			# 	# skips first (page - 1) * 10
			# end
			@activities = PublicActivity::Activity.where(trackable_type: ["Trip", "Stop"]).order(created_at: :desc)
 		  @all_trips = Trip.all
 		  render :private
		else

			render :public
		end
	end


end



		