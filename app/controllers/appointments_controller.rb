class AppointmentsController < ApplicationController
    def new 
        @appointment = Appointment.new(user_id: params[:user_id])
        binding.pry
    end

    def create 
        binding.pry
    end

    private 

    def appointment_params 
        params.require(:appointment)
    end
end
