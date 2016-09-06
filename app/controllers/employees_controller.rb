# == Schema Information
#
# Table name: employees
#
#  id                   :integer          not null, primary key
#  employee_id          :string
#  date_of_birth        :date
#  gender               :string
#  mobile               :string
#  date_of_join         :date
#  date_of_leaving      :date
#  date_of_confirmation :date
#  is_active            :boolean          default(TRUE)
#  marital_status       :string
#  employment_status    :string
#  city                 :string
#  nationality          :string
#  private_email        :integer
#  zipcode              :string
#  referrer_id          :integer
#  manager_id           :integer
#  country_id           :string
#  user_id              :integer
#  department_id        :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class EmployeesController < ApplicationController
   before_action :authenticate_user!
   before_action :set_employee, only: [:show, :edit, :update, :destroy, :change_manager]
   before_action :authenticate_user!
   def index
      @q = Employee.ransack(params[:q])
      @employees = if params[:query].present?
      Employee.search(params[:query], page: params[:page]) # .includes(:user)
                   else
      Employee.all.page(params[:page]).includes(:user, :department)
                 end
      respond_to do |format|
        format.html
        format.csv { send_data @employees.to_csv, filename: "employees-#{Time.zone.today}.csv" }
      end
   end

   def new
      @employee = Employee.new
      @employee.user = User.new
      @employee.employee_id = Employee.active.last.try(:id).next
      @employees = Employee.active.includes(:user)
   end

   def create
      @employee = Employee.new(employee_params)
      if @employee.save
         redirect_to @employee
      else
         render :new
      end
   end

   def show
      @employees = Employee.all.includes(:user)
   end

   def edit
      @employees = Employee.active.includes(:user)
   end

   def update
     @employee = Employee.find(params[:id])
     respond_to do |format|
       if @employee.update_attributes(employee_params)
         format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
       # format.json { render :show, status: :ok, location: @employee }
       else
         format.html { render :edit }
         # format.json { render json: @employee.errors, status: :unprocessable_entity }
       end
     end
   end

   def destroy
      @employee = Employee.find(params[:id])
      # @user = User.find(@employee.user_id)
      @employee.destroy
      respond_to do |format|
         format.html { redirect_to employees_url, notice: 'employee was successfully destroyed.' }
         format.json { head :no_content }
      end
   end

   def change_manager
      return unless request.patch?
      @manager = Employee.find(params[:employee][:manager_id])
      @employee.manager = @manager
      @employee.save
      redirect_to :back
   end

   def autocomplete
       render json: Employee.search(params[:query], autocomplete: true, limit: 10).map(&:name)
   end

  private

   def employee_params
       params.require(:employee).permit(:employee_id, :department_id, :manager_id, user_attributes: [:id, :first_name, :last_name, :email, :password, :avatar])
   end

   def set_employee
       @employee = Employee.find(params[:id])
   end
end
