# == Schema Information
#
# Table name: recruitments
#
#  id             :integer          not null, primary key
#  department_id  :integer
#  title          :text
#  content        :text
#  start_date     :date
#  end_date       :date
#  position       :text
#  no_of_openings :integer
#  is_deleted     :boolean          default(FALSE)
#  is_completed   :boolean          default(FALSE)
#  is_published   :boolean          default(FALSE)
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#

require 'test_helper'

class RecruitmentTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
