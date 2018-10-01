require 'rails_helper'

RSpec.describe Api::V1::IssController, type: :controller do
  describe 'GET #index' do
    before do
      get :index, format: :json
    end

    it 'returns a successful response' do
      expect(response).to be_successful
      expect(response).to have_http_status(200)
    end

    it 'contains ISS record' do
      json = response.body
      iss = parse_json(json)
      expect(iss['date']).not_to be_nil
    end
  end
end
