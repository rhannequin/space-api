module Api
  module V1
    class IssController < ApiController
      def index
        @iss_request = IssRequest.new(start_date: Time.zone.now, latitude: 0.0, longitude: 0.0)
        @iss = Iss.new(date: @iss_request.start_date)
      end
    end
  end
end
