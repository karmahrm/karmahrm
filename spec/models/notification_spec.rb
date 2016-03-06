# == Schema Information
#
# Table name: notifications
#
#  id          :integer          not null, primary key
#  user_id     :integer
#  origin_id   :integer
#  origin_type :string
#  content     :text
#  type        :string
#  is_read     :boolean          default(FALSE)
#  path        :string
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

require 'rails_helper'

RSpec.describe Notification, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
