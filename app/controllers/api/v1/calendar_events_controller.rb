module Api
  module V1
    class CalendarEventsController < ApiController
      before_action :doorkeeper_authorize!
      def index
        render json: CalendarEvent.all
      end
    end
  end
end
