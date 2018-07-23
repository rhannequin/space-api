Rails.application.routes.draw do
  devise_for :users
  use_doorkeeper

  root 'home#index'

  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      get '/', to: 'root#index'
      resources :stars, only: :index
      resources :planetary_systems, only: :index
    end
  end
end
