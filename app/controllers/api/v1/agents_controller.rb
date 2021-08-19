module Api
  module V1
    class AgentsController < ApplicationController
      before_action :set_agent, only: :destroy

      def index
        @agents = Agent.all
        render json: AgentsRepresenter.new(@agents).as_json
      end

      def create
        @agent = Agent.create(agent_params)
        if @agent.save
          render json: AgentRepresenter.new(@agent).as_json, status: :created
        else
          render json: @agent.errors, status: :unprocessable_entity
        end
      end

      # DELETE /categories/:id
      def destroy
        @agent.destroy
        head :no_content
      end

      private

      def agent_params
        params.permit(:first_name, :last_name, :email, :number, :picture)
      end

      def set_agent
        @agent = Agent.find(params[:id])
      end
    end
  end
end
