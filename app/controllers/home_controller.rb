class HomeController < ApplicationController
	def home
		@lab_cateogries = LabCategory.find(:all)
	end

	def login
	respond_to do |format|
      format.html {render :layout => "login"}
      format.json { render json: @patient }
    end

    def create

    user = User.find_by_email(params[:email])	
    if !user.nil?
      status = user.valid_password?(params[:password])
      if status && user.admin?
        session[:user_id] = user.id
        session[:role] = "admin"        
        redirect_to patients_path
      else
       flash.now.alert = "Invalid email or password"
       render "login", :layout => "login"
      end
    else
       flash.now.alert = "Invalid email or password"
       render "login", :layout => "login"
    end   


    end


  end
end
