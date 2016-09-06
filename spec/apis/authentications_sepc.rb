require 'rails_helper'

describe 'API authentication', type: :api do
    let!(:user) { FactoryGirl.create(:user) }

    it 'making a request without cookie token ' do
          get '/api/v1/employees/1', formate: :json
          expect(last_response.status).to eql(401)
          error = { error: 'Not authorized' }
          expect(last_response.body).to eql(error.to_json)
    end
end
