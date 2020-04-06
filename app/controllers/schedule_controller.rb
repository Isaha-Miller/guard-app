class ScheduleController < ApplicationController
   
    def schedule_params
      params.require(:schedule).permit(:time, :dates_per_week, :title, :prof_name)
    end
    
    def authenticate!
      if session[:current_user_id].nil?
        redirect_to "/login" and return
      end
    end
    
    def add_course
      authenticate!
      @user = user.where(id: params[:user])[0]
    end
    
end