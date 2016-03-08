require 'rails_helper'

RSpec.describe PluginsController, type: :controller do
  login_user
  describe 'GET #index' do
    it 'returns http success' do
      get :index
      expect(response).to have_http_status(:success)
    end
  end
end
