class AppointmentsController < ApplicationController
    def new 
        @user = User.find(params[:user_id])
    end

    def create 
        binding.pry
    end
end
