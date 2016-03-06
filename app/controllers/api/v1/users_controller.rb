module Api
  module V1
    class UsersController < ApplicationController
      # before_action :doorkeeper_authorize!
      def index
        render json: { message: 'Resource not found' }
      end
    end
  end
end
