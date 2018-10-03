require "rails_helper"

RSpec.describe Api::V1::IssController, type: :controller do
  describe "GET #index" do
    before do
      get :index, format: :json, params: { longitude: 0, latitude: 0, elevation: 0 }
    end

    it "returns a successful response" do
      expect(response).to be_successful
      expect(response).to have_http_status(200)
    end

    it "contains ISS record" do
      json = response.body
      iss = parse_json(json)
      expect(iss["date"]).not_to be_nil
    end
  end

  describe "GET #index with wrong parameters" do
    before do
      get :index, format: :json, params: { longitude: "Nan" }
    end

    it 'returns an error response' do
      expect(response).not_to be_successful
      expect(response).to have_http_status(400)
    end
  end
end
