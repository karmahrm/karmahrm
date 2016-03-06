# == Schema Information
#
# Table name: announcements
#
#  id                  :integer          not null, primary key
#  title               :string
#  content             :text
#  attachments_count   :integer
#  limit_to_users      :text
#  start_delivering_at :datetime
#  stop_delivering_at  :datetime
#  created_at          :datetime         not null
#  updated_at          :datetime         not null
#

require 'rails_helper'

RSpec.describe Announcement, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
