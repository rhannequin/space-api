module Api
  module V1
    class IssController < ApiController
      def index
        @iss = Iss.new(date: Time.zone.now)
      end
    end
  end
end
