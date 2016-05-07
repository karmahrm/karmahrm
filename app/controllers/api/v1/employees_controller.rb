module Api
  module V1
    class EmployeesController < ApiController
      # before_action :doorkeeper_authorize!
       # after_filter :render_response, unless: -> { @results.nil? }
      def index
        @results = Employee.active
        render_response
      end

      def show
      	@results = Employee.find params[:id]
      	render_response
      end

     def render_response
  	 	render json: @results
     end

    end
  end
end
