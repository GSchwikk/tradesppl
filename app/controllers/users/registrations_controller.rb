class Users::RegistrationsController < Devise::RegistrationsController
  before_filter :select_role, only: :new
  
  def create
    super do |resource|
      if params[:role]
        resource.role_id = params[:role]
        #Remove payment functionality temporarily
        if resource.role_id == 1 || resource.role_id == 2
          resource.save_with_payment
        else
          resource.save
        end
      end
    end
  end
  
  private
  
  def select_role
    unless params[:role] && (params[:role] == "1" || params[:role] == "2" || params[:role] == "3")
      flash[:notice] = "Please select a role to sign up."
      redirect_to root_url
    end
  end
  
  
end