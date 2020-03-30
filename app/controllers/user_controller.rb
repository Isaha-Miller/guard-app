class UserController < ApplicationController
    def new
        @user = User.new
    end
    
    def create
        @user = User.new(params[:user])
        if @user.save
            flash[:notice] = "You have signed up"
            flash[:color] = "valid"
        else
            flash[:notice] = "Invalid form"
            flash[:color] = "invalid"
        end
    
    render "new"
    
    end    
end
