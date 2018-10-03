require "rails_helper"

RSpec.describe IssRequest, type: :model do
  let(:iss_params) do
    {
      start_date: Time.zone.now,
      latitude: 0.0,
      longitude: 0.0,
      elevation: 0,
      pressure: 0,
      horizon: "00:00"
    }
  end
  let(:iss) { IssRequest.new(iss_params) }

  describe "Attributes" do
    it "has a Time attribute #start_date" do
      expect(iss.start_date).to be_a(Time)
    end

    it "has a numeric attribute #latitude" do
      expect(iss.latitude).to be_a(Float)
    end

    it "has a numeric attribute #longitude" do
      expect(iss.longitude).to be_a(Float)
    end
  end

  describe "Validations" do
    describe "Compulsory attributes" do
      %i[start_date latitude longitude].each do |att|
        it "must have a non-nil ##{att} attribute" do
          expect(IssRequest.new(iss_params.except(att))).not_to be_valid
        end
      end
    end

    describe "Numeric attributes" do
      %i[latitude longitude elevation pressure].each do |att|
        it "##{att} attribute is numeric" do
          ["NaN", true, [], {}].each do |not_a_number|
            expect(IssRequest.new(iss_params.merge(att => not_a_number))).not_to be_valid
          end
        end
      end

      it "#latitude is between -90 and 90" do
        expect(IssRequest.new(iss_params.merge(latitude: -95))).not_to be_valid
        expect(IssRequest.new(iss_params.merge(latitude: 10))).to be_valid
        expect(IssRequest.new(iss_params.merge(latitude: 95))).not_to be_valid
      end

      it "#longitude is between -180 and 180" do
        expect(IssRequest.new(iss_params.merge(longitude: -185))).not_to be_valid
        expect(IssRequest.new(iss_params.merge(longitude: 95))).to be_valid
        expect(IssRequest.new(iss_params.merge(longitude: 185))).not_to be_valid
      end

      it "#elevation is a positive integer" do
        expect(IssRequest.new(iss_params.merge(elevation: -1))).not_to be_valid
        expect(IssRequest.new(iss_params.merge(elevation: 1))).to be_valid
        expect(IssRequest.new(iss_params.merge(elevation: 1.1))).not_to be_valid
      end

      it "#elevation is not required" do
        expect(IssRequest.new(iss_params.merge(elevation: nil))).to be_valid
      end

      it "#pressure is a positive integer" do
        expect(IssRequest.new(iss_params.merge(pressure: -1))).not_to be_valid
        expect(IssRequest.new(iss_params.merge(pressure: 1))).to be_valid
        expect(IssRequest.new(iss_params.merge(pressure: 1.1))).not_to be_valid
      end

      it "#pressure is not required" do
        expect(IssRequest.new(iss_params.merge(pressure: nil))).to be_valid
      end
    end

    describe "Other attributes" do
      it "#horizon is format HH:MM" do
        expect(IssRequest.new(iss_params.merge(horizon: "01:02"))).to be_valid
        expect(IssRequest.new(iss_params.merge(horizon: "-00:00"))).not_to be_valid
        expect(IssRequest.new(iss_params.merge(horizon: "24:00"))).not_to be_valid
        expect(IssRequest.new(iss_params.merge(horizon: "10:60"))).not_to be_valid
      end
    end
  end
end
