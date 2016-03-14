class AppointmentsController < ApplicationController
    def new
        @appointment = current_user.appointments.build
    end

    def show
        @appointments = Appointment.find(params[:id])
    end

    def edit
        @appointment = Appointment.find(params[:id])
    end

    def create
        @appointment = current_user.appointments.build(app_params)
        if @appointment.save
            redirect_to stylists_path, notice: 'Created'
        else
            redirect_to new_appointment_path, notice: 'Not Created'
        end
    end

    def update
        @appointment = Appointment.find(params[:id])
        if @appointment.update(app_params)
            redirect_to stylists_path
        else
            redirect_to new_appointment_path
        end
    end

    def destroy
        @appointment = Appointment.find(params[:id])
        @appointment.destroy
        redirect_to stylists_path
    end

    private
    def app_params
        params.require(:appointment).permit(:name, :date, :time, :hair_style, :comment)
    end
end
