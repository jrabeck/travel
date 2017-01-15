class CommentsController < ApplicationController

	def create
		@trip = Trip.find_by(id: params[:id])
		@stop = Stop.find_by(id: params[:id])
		@comment = Comment.create(user_id: params[:user_id], comment: params[:comment], commentable_id: params[:commentable_id], commentable_type: params[:commentable_type])
      if @comment.save  
    		if @comment.commentable_type == "Trip"
	    	redirect_to "/trips/#{@trip.id}"
	    	elsif @comment.commentable_type == "Stop"
	    	redirect_to "/stops/#{@stop.id}"
	    	end	
		  else
		  redirect_to "/"
    	end
	end

	def destroy
		@comment = Comment.find_by(id: params[:id])
		@comment.destroy
		@trip = Trip.find_by(id: @comment.commentable_id)
		redirect_to "/trips/#{@trip.id}"
	end

end
