# == Schema Information
#
# Table name: identities
#
#  id         :integer          not null, primary key
#  user_id    :integer
#  provider   :string
#  uid        :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'test_helper'

class IdentityTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
