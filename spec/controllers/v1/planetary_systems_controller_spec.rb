require 'rails_helper'

RSpec.describe V1::PlanetarySystemsController, type: :controller do
  describe 'GET #index' do
    before do
      PlanetarySystem.create!(name: 'Solar System')
      get :index, format: :json
    end

    it 'returns a successful response' do
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'contains stars records' do
      json = response.body
      planetary_system = parse_json(json).first
      expect(json).to have_json_size(1)
      expect(planetary_system['name']).to eq('Solar System')
    end
  end
end
