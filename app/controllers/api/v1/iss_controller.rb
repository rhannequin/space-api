module Api
  module V1
    class IssController < ApiController
      def index
        @iss = Struct.new(:date).new(Time.zone.now)
      end
    end
  end
end
