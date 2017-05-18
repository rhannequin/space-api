class RootController < ApplicationController
  def index
    render json: { message: 'Hello there!', status: 200 }
  end
end
