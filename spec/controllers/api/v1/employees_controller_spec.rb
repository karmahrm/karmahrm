require 'rails_helper'

RSpec.describe Api::V1::EmployeesController, type: :controller do
  describe 'GET #index' do
    let(:token) { double acceptable?: true }

    before do
      # controller.stub(:doorkeeper_token) { token }
      allow(controller).to receive(:doorkeeper_token) { token } # => RSpec 3
    end

    it 'responds with 200' do
      get :index, format: :json
      expect(response.status).to eq(200)
    end
  end
end
