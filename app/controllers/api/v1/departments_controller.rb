module Api::V1
  class DepartmentsController < ApiController
    before_action :doorkeeper_authorize!
    def index
      render json: Department.all
    end
  end
end
