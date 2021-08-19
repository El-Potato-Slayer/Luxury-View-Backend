module Api
  module V1
    class PropertiesController < ApplicationController
      before_action :set_property, only: %i[update show destroy]
      
      def index
        @properties = Property.all
        render json: PropertiesRepresenter.new(@properties).as_json 
      end

      def create
        @property = Property.create(property_params)
        if @property.save
          render json: PropertyRepresenter.new(@property).as_json, status: :created
        else
          render json: @property.errors, status: :unprocessable_entity
        end
      end

      def show
        render json: PropertyRepresenter.new(@property).as_json
      end

      def update
        @property.update(property_params)
        head :no_content
      end

      def destroy
        @property.destroy
        head :no_content
      end

      private
      def property_params
        params.permit(:name, :description, :price, :address, :floor_area, :land_area, :agent_id)
      end
      def set_property
        @property = Property.find(params[:id])
      end
    end
  end
end
