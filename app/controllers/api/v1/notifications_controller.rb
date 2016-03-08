module Api
  module V1
    class NotificationsController < ApiController
      before_action :doorkeeper_authorize!
      def index
        render json: current_resource_owner.notifications
      end
    end
  end
end
