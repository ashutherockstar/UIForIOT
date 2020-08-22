class UsersController < ApplicationController
  skip_before_action :verify_authenticity_token
  layout 'post_layout'

  def index1
    # user = Userregistration.where("name = ? and password = ? or email = ? and password = ?",  params[:name],params[:email], params[:password],params[:password]).first
    
    user = Userregistration.find_by( email: params[:email],password: params[:password]) || user = Userregistration.find_by( name: params[:name],password: params[:password])
    
   

    if user.present?
      session[:user_id] = user.id
    end

    if session[:user_id].present?
      @user = Userregistration.find(session[:user_id])
      render :action => :index1
    else
       redirect_to login_path
       flash[:alert] = "Email/Password does not match"
    end
  end

  def log_out
  reset_session
  redirect_to root_path  
  end
end
