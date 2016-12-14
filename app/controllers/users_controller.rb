class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new  
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email].downcase,
      password: params[:password],
      password_confirmation: params[:password_confirmation]
    )
    if user.save
      session[:user_id] = user.id
      flash[:success] = 'Successfully created account!'
      redirect_to '/'
    else
      flash[:warning] = 'Invalid email or password!'
      redirect_to '/signup'
    end
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
