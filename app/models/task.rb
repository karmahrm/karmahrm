# == Schema Information
#
# Table name: tasks
#
#  id          :integer          not null, primary key
#  employee_id :integer
#  content     :text
#  start_date  :date
#  end_date    :date
#  is_delete   :boolean          default(FALSE)
#  priority    :integer
#  owner_id    :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Task < ActiveRecord::Base
  belongs_to :employee
end
