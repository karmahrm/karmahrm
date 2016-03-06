require 'rails_helper'

RSpec.describe 'AnnouncementComments', type: :request do
  describe 'GET /announcement_comments' do
    it 'works! (now write some real specs)' do
      get announcement_comments_path
      expect(response).to have_http_status(200)
    end
  end
end
