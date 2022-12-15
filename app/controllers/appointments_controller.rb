class AppointmentsController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_record_not_found


    def index
        appointment = Appointment.all
        render json: appointment, status: :ok
    end

    def show
        appointment = find_appointment
        render json: appointment
    end

    def create
        appointment = Appointment.create!(create_appointment_params)
        render json: appointment
    end

    def destroy
        appointment = find_appointment
        appointment.destroy
        head :no_content 
    end

    private 

    def find_appointment 
        appointment = Appointment.find(params[:id])
    end

    def create_appointment_params
        params.permit(:user_id, :physical_therapist_id, :date, :time, :claim, :home_visit)
    end

    def render_record_not_found 
        render json: { error: "Appointment not found" }, status: :not_found 
    end 

end
