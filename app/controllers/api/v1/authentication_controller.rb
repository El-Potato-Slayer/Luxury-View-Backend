module Api
  module V1
    class AuthenticationController < ApplicationController
      class AuthenticateError < StandardError; end
      rescue_from ActionController::ParameterMissing, with: :parameter_missing
      rescue_from AuthenticateError, with: :handle_unauthenticated
      def create
        if user
          raise AuthenticateError unless user.authenticate(params.require(:password))

          render json: UserRepresenter.new(user).as_json, status: :created
        else
          render json: { error: 'No such user' }, status: :unauthorized
        end
      end

      def profile
        auth_header = request.headers['Authorization']
        token = auth_header.split.last
        payload = AuthenticationTokenService.decode(token)
        if payload
          current_user = User.find_by(id: payload[0]['user_id'])
          # render json: current_user.to_json(except: [:id, :password_digest, :created_at, :updated_at])
          render json: UserRepresenter.new(current_user).profile
        else
          render json: { error: 'Invalid token' }, status: :unauthorized
        end
      end

      private

      def user
        @user ||= User.find_by(username: params.require(:username))
      end

      def parameter_missing(error)
        render json: { error: error.message }, status: :unprocessable_entity
      end

      def handle_unauthenticated
        render json: { error: 'Incorrect password ' }, status: :unauthorized
      end
    end
  end
end
