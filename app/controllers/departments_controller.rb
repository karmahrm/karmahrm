# == Schema Information
#
# Table name: departments
#
#  id         :integer          not null, primary key
#  name       :string
#  company_id :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class DepartmentsController < ApplicationController
   before_action :authenticate_user!
   before_action :set_department, only: [:show, :edit, :update, :destroy]
   def new
      @department = Department.new
   end

   def create
   end

   def show
   end

   def index
      @departments = Department.all
   end

   def edit
   end

  private

   def set_department
       @department = Department.find(params[:id])
     end
end
