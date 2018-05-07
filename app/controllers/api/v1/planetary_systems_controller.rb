module Api
  module V1
    class PlanetarySystemsController < ApplicationController
      def index
        @planetary_systems = PlanetarySystem.all
      end
    end
  end
end
