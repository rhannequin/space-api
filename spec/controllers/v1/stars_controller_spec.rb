require 'rails_helper'

RSpec.describe V1::StarsController, type: :controller do
  describe 'GET #index' do
    before do
      Star.create!(name: 'Sun', mass: 10)
      get :index, format: :json
    end

    it 'returns a successful response' do
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'contains stars records' do
      json = response.body
      star = parse_json(json).first
      expect(json).to have_json_size(1)
      expect(star['name']).to eq('Sun')
      expect(star['mass']).to eq(10)
    end
  end
end
