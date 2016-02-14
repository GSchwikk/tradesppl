class UsersController < ApplicationController
    before_action :authenticate_user!
    
    def index
       @users = User.all 
    end
    
    def show
        @user = User.find( params[:id] )
        @reviews = Review.where(profile_id: @user.profile.id)
        @skill1 = @user.profile.categories[0]
        @skill2 = @user.profile.categories[1]
        @skill3 = @user.profile.categories[2]
    end
    
end