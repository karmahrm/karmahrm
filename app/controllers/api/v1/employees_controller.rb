module Api
  module V1
    class EmployeesController < ApiController
      before_action :doorkeeper_authorize!
      before_action :set_employee, only: [:show, :update, :destroy, :change_manager]

      def index
       render json: Employee.active
      end

      def show
        render json: Employee.find(params[:id])
      end

      def update
        responce = @employee.update_attributes(employee_params)
        render json: { responce: responce }
      end

      def destroy
        responce = @employee.update_attributes(is_active: false)
        render json: { responce: responce }
      end

      private

      def set_employee
        @employee = Employee.find(params[:id])
      end

      def employee_params
        params.require(:employee).permit(:employee_id, :department_id, :manager_id,
                                         user_attributes: [
                                           :id, :first_name, :last_name, :email, :password, :avatar
                                         ])
      end
    end
  end
end
