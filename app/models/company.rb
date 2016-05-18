# == Schema Information
#
# Table name: companies
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

# Or organisation ?
class Company < ActiveRecord::Base
   has_many :departments, dependent: :destroy
end
