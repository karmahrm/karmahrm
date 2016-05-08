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
#  private_email        :intege
#  zipcode              :string
#  referrer_id          :integer
#  manager_id           :integer
#  country_id           :string
#  user_id              :integer
#  department_id        :integer
#  created_at           :datetime         not null
#  updated_at           :datetime         not null
#

class EmployeeSerializer < ActiveModel::Serializer
  attributes :id, :employee_id,:name,:email,:date_of_birth
end
