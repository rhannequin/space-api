module Api
  module V1
    class StarsController < ApiController
      def index
        @stars = Star.all

        render json: @stars
      end

      def show
        @star = Star.find(params[:id])

        render json: @star
      end
    end
  end
end
