module Api
  module V1
    class StarsController < ApiController
      def index
        @stars = Star.all
      end
    end
  end
end
