class AdminController < ApplicationController
    def new
        @admin = User.new
    end
    
    def create
        @admin = User.new(params[:user])
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
