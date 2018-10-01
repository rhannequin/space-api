module Api
  module V1
    class ApiController < ActionController::API
      include ActionView::Rendering

      protected

        def render_error(errors)
          render(json: { errors: errors }, status: 400)
        end
    end
  end
end
