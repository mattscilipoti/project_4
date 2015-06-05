class ProfilesController < ApplicationController
	before_action :authenticate_user!, only: [:new, :create, :edit, :update, :destroy]  

  def index
  	@profiles = Profile.all

  end


  def show
	@profile = Profile.find(params[:id])

  end

  def new
    @profile = Profile.new
  
  end

  def create
    @profile = current_user.create_profile(profile_params)
    if @profile.save
      redirect_to @profile
    else
      render :new
    end

  end

  def edit
    @profile = current_user.profile

  end

  def update
    @profile = Profile.find(params[:id])
    
    if @profile.update(profile_params)
      redirect_to @profile
    else
      render :edit
    end
  end

  def destroy
    @profile = Profile.find(params[:id])
    @profile.destroy
    redirect_to profiles_path
  end
  
  private

  def profile_params
    params.require(:profile).permit(:username, :zipcode, :location, :user_id, :bio)
  end	
	
	
end