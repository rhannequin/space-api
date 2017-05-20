Rails.application.routes.draw do
  namespace :v1 do
    root to: 'root#index'
  end
end
