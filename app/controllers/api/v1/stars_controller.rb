module Api
  module V1
    class StarsController < ApiController
      def index
        @stars = Star.all

        render json: @stars
      end
    end
  end
end
