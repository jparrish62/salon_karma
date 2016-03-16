class AppointmentsController < ApplicationController
    def new
        @appointment = current_user.appointments.build(stylist:@stylist)
    end

    def show
        @appointment = Appointment.find(params[:id])
    end

    def edit
        @appointment = Appointment.find(params[:id])
    end

    def create
        @stylist = Stylist.find(params[:stylist_id])
        @appointment = @stylist.appointments.build(app_params)
        @appointment.user = current_user
        if @appointment.save
            respond_to do |format|
                format.html {redirect_to @stylist}
                format.js
            end
        else
            redirect_to new_stylist_appointment_path, notice: 'Not Created'
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
        params.require(:appointment).permit(:name, :date, :time, :hair_style, :chemical_services, :color_services,
                       :treatment_services, :weaves, :braid, :comment)
    end
end
