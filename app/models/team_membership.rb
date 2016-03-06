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

class TeamMembership < ActiveRecord::Base
  belongs_to :employee
  belongs_to :team
end
