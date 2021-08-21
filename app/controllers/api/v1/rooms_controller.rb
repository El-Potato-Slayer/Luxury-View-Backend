module Api
  module V1
    class RoomsController < ApplicationController
      before_action :set_room, only: %i[update show destroy]

      def index
        @rooms = Room.all
        render json: RoomsRepresenter.new(@rooms).as_json
      end

      def create
        @room = Room.create(room_params)
        if @room.save
          render json: RoomRepresenter.new(@room).as_json, status: :created
        else
          render json: @room.errors, status: :unprocessable_entity
        end
      end

      def show
        render json: RoomRepresenter.new(@room).as_json
      end

      def update
        @room.update(room_params)
        head :no_content
      end

      def destroy
        @room.destroy
        head :no_content
      end

      private

      def room_params
        params.permit(:property_id, :name, :amount)
      end

      def set_room
        @room = Room.find(params[:id])
      end
    end
  end
end
