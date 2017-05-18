require 'rails_helper'

RSpec.describe RootController, type: :controller do
  describe 'GET #index' do
    it 'returns a successful response' do
      get :index
      expect(response).to be_success
      expect(response).to have_http_status(200)
    end
  end
end
