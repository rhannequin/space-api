module Api
  module V1
    class IssController < ApiController
      # Usage: GET /api/v1/iss?latitude=48.8765&longitude=2.4321
      def index
        @iss_request = IssRequest.new(iss_request_parameters.merge(start_date: Time.zone.now))
        return render_error(@iss_request.errors.full_messages) unless @iss_request.valid?
        @iss = Iss.new(date: @iss_request.start_date)
      end

      private

        def iss_request_parameters
          params.permit(:latitude, :longitude)
        end
    end
  end
end
