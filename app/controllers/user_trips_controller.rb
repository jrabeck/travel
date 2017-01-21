class UserTripsController < ApplicationController

	def index
		@user = User.find_by(id: 1)
		@trips = @user.trips
	end

	def new
		@trip = Trip.find_by(id: params[:id])
		saved = []
			(1..5).each do |number|
        if params["attendee#{number}_email"]
          user = User.find_by(email: params["attendee#{number}_email"])
          if user
            usertrip = Usertrip.new(user_id: user.id, trip_id: @trip.id)
            saved << usertrip
          end
        end
      end
      if saved.length > 0 
      	saved.each do |usertrip|
      	usertrip.save
      	end
      end

      	redirect_to "/trips/#{@trip.id}"


    end
	
end
