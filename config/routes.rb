Rails.application.routes.draw do
  namespace :api, defaults: { format: :json } do
    namespace :v1 do
      root to: 'root#index'
      resources :stars, only: :index
      resources :planetary_systems, only: :index
    end
  end
end
