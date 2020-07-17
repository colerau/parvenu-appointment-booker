class AppointmentsController < ApplicationController
    def new 
        @appointment = Appointment.new(user_id: params[:user_id])
    end

    def create 
        @appointment = Appointment.new(appointment_params)
        if @appointment.save 
            flash[:notice] = "Appointment successfully booked"
            redirect_to user_appointment_path(@appointment.user_id, @appointment.id)
        else 
            flash[:notice] = "Something went wrong"
            render :new 
        end
    end

    def show
        get_appointment_and_user
    end

    def edit 
        get_appointment_and_user
    end

    def update 
        @appointment = Appointment.find(params[:id])
        if @appointment.update(appointment_params)
            flash[:notice] = "Appointment Updated Successfully"
            redirect_to appointment_path(@appointment.id)
        else 
            render :edit
        end
    end

    def destroy 
        @appointment = Appointment.find(params[:id])
        @appointment.destroy 
        flash[:notice] = "Appointment Deleted"
        redirect_to root_path
    end

    private 

    def appointment_params 
        params.require(:appointment).permit(:time, :user_id, :employee_id)
    end

    def get_appointment_and_user
        @appointment = Appointment.find_by(id: params[:id])
        @user = User.find(@appointment.user_id)
    end
end
