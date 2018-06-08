module Api
  module V1
    class StarsController < ApiController
      before_action only: :index do
        doorkeeper_authorize! :'stars:read'
      end

      def index
        @stars = Star.all
      end
    end
  end
end
