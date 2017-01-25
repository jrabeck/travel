class HomeController < ApplicationController

	def home
		if current_user
			@trips = current_user.trips
			# if params[:page]
			# 	# skips first (page - 1) * 10
			# end
			@pages = (PublicActivity::Activity.where(trackable_type: ["Trip", "Stop"]).length / 10)
			if PublicActivity::Activity.where(trackable_type: ["Trip", "Stop"]).length%10 != 0
				@pages += 1
			end
			if params[:page]
			  @activities = PublicActivity::Activity.where(trackable_type: ["Trip", "Stop"]).order(created_at: :desc).limit(10).offset((params[:page].to_i - 1) * 10)
			else
			  @activities = PublicActivity::Activity.where(trackable_type: ["Trip", "Stop"]).order(created_at: :desc).limit(10)
			end
 		  @all_trips = Trip.all
 		  render :private
		else

			render :public
		end
	end


end



		