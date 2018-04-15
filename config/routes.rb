Rails.application.routes.draw do
  namespace :v1 do
    root to: 'root#index'
    resources :stars, only: :index, defaults: { format: :json }
    resources :planetary_systems, only: :index, defaults: { format: :json }
  end
end
