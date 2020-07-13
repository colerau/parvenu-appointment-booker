class ApplicationController < ActionController::Base
    #writing "helper_method" makes method available to views too (along with controllers)
    helper_method :current_user

    def current_user
        if session[:user_id]
            @current_user ||= User.find(session[:user_id])
        end 
    end
end
