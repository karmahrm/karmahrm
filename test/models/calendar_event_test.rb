# == Schema Information
#
# Table name: calendar_events
#
#  id                :integer          not null, primary key
#  title             :string
#  description       :text
#  comments          :text
#  start_at          :datetime
#  end_at            :datetime
#  location_name     :string
#  location_address  :text
#  user_id           :integer
#  calendar_event_id :integer
#  context_id        :integer
#  context_type      :string
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class CalendarEventTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
