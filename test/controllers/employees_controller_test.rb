# == Schema Information
#
# Table name: employees
#
#  id              :integer          not null, primary key
#  employee_id     :string
#  date_of_birth   :date
#  gender          :string
#  mobile          :string
#  date_of_join    :date
#  date_of_leaving :date
#  is_active       :boolean          default(TRUE)
#  referrer_id     :integer
#  manager_id      :integer
#  user_id         :integer
#  department_id   :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

require 'test_helper'

class EmployeesControllerTest < ActionController::TestCase
  # test "the truth" do
  #   assert true
  # end
end
