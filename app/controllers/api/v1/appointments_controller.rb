module Api
  module V1
    class AppointmentsController < ApplicationController
      before_action :authenticate_request!
      before_action :set_appointment, only: %i[update show destroy]

      def index
        @appointments = current_user!.appointments
        render json: AppointmentsRepresenter.new(@appointments).as_json
      end

      def create
        @appointment = current_user!.appointments.create(appointment_params)
        if @appointment.save
          render json: AppointmentRepresenter.new(@appointment).as_json, status: :created
        else
          render json: @appointment.errors, status: :unprocessable_entity
        end
      end

      def show
        render json: AppointmentRepresenter.new(@appointment).as_json
      end

      def update
        @appointment.update(appointment_params)
        head :no_content
      end

      def destroy
        @appointment.destroy
        head :no_content
      end

      private

      def appointment_params
        params.permit(:user_id, :property_id, :date)
      end

      def set_appointment
        @appointment = Appointment.find(params[:id])
      end
    end
  end
end
