class UsersController < ApplicationController

  def index
  end

  def show
  end

  def new  
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end

  def travel_home
  end

  def search_user
    @following = current_user.following
    @follows = current_user.follows
  end

end
