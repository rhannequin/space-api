require 'rails_helper'

RSpec.describe V1::RootController, type: :controller do
  describe 'GET #index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end

    it 'contains the greeting message' do
      get :index
      json = response.body
      expect(json).to have_json_path('message')
      expect(parse_json(json, 'message')).to eq('Hello there!')
    end
  end
end
