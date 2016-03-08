module Api
  module V1
    class EmployeesController < ApiController
      before_action :doorkeeper_authorize!
      def index
        render json: Employee.active
      end
    end
  end
end
