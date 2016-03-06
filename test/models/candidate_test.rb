# == Schema Information
#
# Table name: candidates
#
#  id                :integer          not null, primary key
#  recruitment_id    :integer
#  first_name        :text
#  last_name         :text
#  address           :text
#  dob_date          :date
#  city              :text
#  state             :text
#  pin_code          :integer
#  home_phone_number :integer
#  mobile            :integer
#  email             :text
#  qualification     :text
#  status            :boolean
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class CandidateTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
