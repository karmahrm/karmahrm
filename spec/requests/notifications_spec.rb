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

RSpec.describe 'Notifications', type: :request do
  # login_user
  # describe 'GET /notifications' do
  #   it 'works! (now write some real specs)' do
  #     get notifications_path
  #     expect(response).to have_http_status(200)
  #   end
  # end
end
