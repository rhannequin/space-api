module Api
  module V1
    class PlanetarySystemsController < ApplicationController
      def index
        @planetary_systems = PlanetarySystem.all

        render json: @planetary_systems
      end
    end
  end
end
