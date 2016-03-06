# == Schema Information
#
# Table name: team_memberships
#
#  id          :integer          not null, primary key
#  employee_id :integer
#  team_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'test_helper'

class TeamMembershipTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
