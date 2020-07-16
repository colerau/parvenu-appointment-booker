class AppointmentsController < ApplicationController
    def new 
        @appointment = Appointment.new
    end

    def create 
        binding.pry
    end

    private 

    def appointment_params 
        params.require(:appointment)
    end
end
