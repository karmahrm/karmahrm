# == Schema Information
#
# Table name: auth_tokens
#
#  id         :integer          not null, primary key
#  token      :string
#  token_type :string
#  user_id    :integer
#  expires_at :datetime
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe AuthToken, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
