class ProfilesController < ApplicationController
  before_action :authenticate_user!
  before_action :only_current_user
  before_action :not_homer
   
  def new
    # form where a user can fill out their own profile.
    @user = User.find( params[:user_id] )
    @profile = Profile.new
    @categories = Category.all
  end
    
  def create
    @user = User.find( params[:user_id] )
    @profile = @user.build_profile(profile_params)
    if @profile.save
      flash[:success] = "Profile Updated!"
      redirect_to user_path(params[:user_id])
    else
      render action: :new 
    end
  end
    
  def edit
    @user = User.find( params[:user_id] )
    @profile = @user.profile
    @categories = Category.all
  end
  
  def update
    @user = User.find(params[:user_id])
    @profile = @user.profile
    @categories = Category.all
    
    if @profile.update_attributes(profile_params)
      flash[:success] = "Profile Updated!"
      redirect_to user_path(params[:user_id])
    else
      render action: :edit
    end
  end
    
  private 
    def profile_params
      params.require(:profile).permit(:first_name, :last_name, :avatar, :phone_number, :contact_email, :hourly_rate, :description, :category_ids => [])
    end
    
    def only_current_user
      @user = User.find(params[:user_id])
      redirect_to(root_url) unless @user == current_user
    end

    def not_homer
      if current_user.role_id == 1
        flash[:danger] = "Profiles are for TradesPersons and Contractors Only"
        redirect_to(root_url)
      end
    end

end