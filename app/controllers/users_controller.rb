class UsersController < ApplicationController

  def index
    @users = User.all
    @trips = current_user.trips
  end

  def show
    @user = User.find_by(id: params[:id])
  end

  def new  
  end

  def traveling
    if current_user.traveling == false
      current_user.traveling = true
    elsif current_user.traveling == true
      current_user.traveling = false
    end
    redirect_to "/"
  end


  def create
    user = User.new(
      name: params[:name],
      email: params[:email].downcase,
      password: params[:password],
      password_confirmation: params[:password_confirmation],
      traveling: false 
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

  def testfeed
  @activities = PublicActivity::Activity.where(trackable_type: ["Trip", "Stop"])
  @trips = Trip.all
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
