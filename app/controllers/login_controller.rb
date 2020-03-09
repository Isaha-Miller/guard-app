class LoginController < ApplicationController
  def home
      if params[:user].nil?
        @username = ""
        @password = ""
      else
        @username = params[:user].fetch("name")
        @password = params[:user].fetch("password")
      end
      
      if @username.empty? && @password.empty?
        @error_message = "hidden"
      elsif @password == (User.where("name = '#{@username}'").pluck(:password))[0]
        session[:current_user_id] = (User.where(name: @username, password: @password).pluck(:id))[0]
        redirect_to "/patients" and return
      else
        @error_message = "reveal"
      end
  end
  
  def new_user
    render "/register/register.html.haml"
  end
  
 
  def logout
    session[:current_user_id] = nil
    redirect_to "/login" and return
  end
end

