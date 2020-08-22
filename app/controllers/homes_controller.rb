class HomesController < ApplicationController
  layout 'prelayout'
  
  
  def index
    if session[:user_id].present?
      @user = Userregistration.find(session[:user_id])
      render 'users/index1', layout: "post_layout"
    else
      render :action => :index
    end
  end

 
  def sign_up
    if session[:user_id].present?
      @user = Userregistration.find(session[:user_id])
      render 'users/index1', layout: "post_layout"
    else
      render :action => :sign_up
    end
  end
  
  def login
    if session[:user_id].present?
      @user = Userregistration.find(session[:user_id])
      render 'users/index1', layout: "post_layout"
    else
      render :action => :login
    end
  end
   
  def contact
    if session[:user_id].present?
      @user = Userregistration.find(session[:user_id])
      render 'users/index1', layout: "post_layout"
    else
      render :action => :contact
    end
  end

  def about_us
    if session[:user_id].present?
      @user = Userregistration.find(session[:user_id])
      render 'users/index1', layout: "post_layout"
    else
      render :action => :about_us
    end
  end


  def show
    @user=Userregistration.create(name:params[:name],age: params[:age],address: params[:address],email:params[:email],password: params[:password])
    render :action => :show
  end

end
