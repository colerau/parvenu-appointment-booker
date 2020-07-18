class ApplicationController < ActionController::Base
    #writing "helper_method" makes method available to views too (along with controllers)
    helper_method :current_user, :authorize, :logged_in?, :is_users_appointment?

    def logged_in?
        !!session[:user_id]
    end

    def current_user
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])
        end 
    end

    # * probably don't need this method
    def authorize
        if current_user.nil? 
            flash[:notice] = "You must be logged in to access this page"
            redirect_to login_path
        end
    end

    def is_users_appointment?(appointment)
        current_user.id == appointment.user_id
    end
end
