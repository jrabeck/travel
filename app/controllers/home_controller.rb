class HomeController < ApplicationController

	def home
		if current_user
			# @user = current_user
			@trips = current_user.trips
			render :private
		else
			render :public
		end
	end

end
