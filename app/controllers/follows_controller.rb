class FollowsController < ApplicationController

  def index
  end

  def show
  end

  def new  
  end

  def create
    @follow = Follow.new(follower_id: current_user.id, following_id: params[:id])
    @follow.save
    redirect_to "/users/#{params[:id]}"
  end

  def edit
  end

  def update
  end

  def destroy
  end
  
end
