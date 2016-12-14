class UserTripsController < ApplicationController

	def index
		@user = User.find_by(id: 1)
		@trips = @user.trips
	end

end
