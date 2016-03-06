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

class AuthTokenSerializer < ActiveModel::Serializer
  attributes :id
end
