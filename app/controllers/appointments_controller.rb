class AppointmentsController < ApplicationController
    def new 
        @appointment = Appointment.new(user_id: params[:user_id])
    end

    def create 
        @appointment = Appointment.new(appointment_params)
        if @appointment.save 
            flash[:notice] = "Appointment successfully booked"
            redirect_to user_appointment_path(@appointment.id, @appointment.user_id)
        else 
            flash[:notice] = "Something went wrong"
            render :new 
        end
    end

    def show 
        binding.pry
        @appointment = Appointment.find_by(id: params[:id])
        binding.pry
        @user = User.find(@appointment.user_id)
    end

    private 

    def appointment_params 
        params.require(:appointment).permit(:time, :user_id, :employee_id)
    end
end
