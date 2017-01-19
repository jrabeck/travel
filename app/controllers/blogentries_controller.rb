class BlogentriesController < ApplicationController


	def create
		@trip = Trip.find_by(id: params[:id])
		@stop = Stop.find_by(id: params[:id])
		@blogentry = Blogentry.create(user_id: params[:user_id], entry: params[:entry], blogable_id: params[:blogable_id], blogable_type: params[:blogable_type])
      if @blogentry.save  
    		if @blogentry.blogable_type == "Trip"
	    	redirect_to "/trips/#{@trip.id}"
	    	elsif @blogentry.blogable_type == "Stop"
	    	redirect_to "/stops/#{@stop.id}"
	    	end	
		  else
		  redirect_to "/"
    	end
	end

	def destroy
		@blogentry = Blogentry.find_by(id: params[:id])
		@blogentry.destroy
		@trip = Trip.find_by(id: @blogentry.blogable_id)
		@stop = Stop.find_by(id: @blogentry.blogable_id)
		if @blogentry.blogable_type == "Trip"
		redirect_to "/trips/#{@trip.id}"
		elsif @blogentry.blogable_type == "Stop"
		redirect_to "/stops/#{@stop.id}"
		end

	end


end
