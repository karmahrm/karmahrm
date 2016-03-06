# == Schema Information
#
# Table name: interviews
#
#  id                :integer          not null, primary key
#  title             :text
#  recruitment_id    :integer
#  interviewer_id    :integer
#  date_of_interview :date
#  is_deleted        :boolean          default(FALSE)
#  no_of_candidates  :integer
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#

require 'test_helper'

class InterviewTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
