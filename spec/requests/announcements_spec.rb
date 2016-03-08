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

RSpec.describe 'Announcements', type: :request do
  # describe 'GET /announcements' do
  #   it 'works! (now write some real specs)' do
  #     get announcements_path
  #     expect(response).to have_http_status(200)
  #   end
  # end
end
