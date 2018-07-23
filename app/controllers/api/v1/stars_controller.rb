module Api
  module V1
    class StarsController < ApiController
      before_action(only: :index) { doorkeeper_authorize! :'stars:read' }

      def index
        @stars = Star.all
      end
    end
  end
end
