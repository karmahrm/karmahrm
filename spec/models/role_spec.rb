# == Schema Information
#
# Table name: roles
#
#  id         :integer          not null, primary key
#  name       :string
#  activities :string           default([]), is an Array
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Role, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
