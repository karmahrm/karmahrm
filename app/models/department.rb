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

class Department < ActiveRecord::Base
   belongs_to :company
   has_many :employees, dependent: :destroy
   has_many :teams
end
