require 'rails_helper'

RSpec.describe V1::StarsController, type: :controller do
  describe 'GET #index' do
    before do
      Star.create!(name: 'Sun')
      get :index, format: :json
    end

    it 'returns a successful response' do
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'contains stars records' do
      json = response.body
      expect(json).to have_json_size(1)
      expect(parse_json(json).first['name']).to eq('Sun')
    end
  end
end
