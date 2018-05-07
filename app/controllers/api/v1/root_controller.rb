module Api
  module V1
    class RootController < ApiController
      def index
        render json: { message: 'Hello there!', status: 200 }
      end
    end
  end
end
