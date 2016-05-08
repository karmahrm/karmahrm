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

      def edit
      	@results = Employee.find params[:id]
      end

      def update
      	responce = Employee.update_attributes(params[:employee])
      	render json: {:responce=>responce}
      	# to do  updated data
      end

      def  destroy
      	responce = Employee.update_attributes(:is_active=>false)
      	render json: {:responce=>responce}
      end
      
  	private

     def render_response
  	 	render json: @results
     end

    end
  end
end
