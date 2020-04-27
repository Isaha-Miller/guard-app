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
    
    def search #adds a case insensitive search funtion
        @students = User.all
        if !(params[:first_name].to_s.empty?)
            @students = User.where('lower(first_name) = ?', params[:first_name].downcase)
            #filter_options[:first_name] = params[:first_name].downcase
        end
        if !(params[:last_name].to_s.empty?)
            @students = User.where('lower(last_name) = ?', params[:last_name].downcase)
        end
        if !(params[:email].to_s.empty?)
            @students = User.where('lower(email) = ?', params[:email].downcase)
        end
        if !(params[:cwid].to_s.empty?)
            @students = User.where('lower(cwid) = ?', params[:cwid].downcase)
        end
        if !(params[:phone_number].to_s.empty?)
            @students = Usert.where('lower(phone_number) = ?', params[:phone_number].downcase)
        end
        
    end
end
