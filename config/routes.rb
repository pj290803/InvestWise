Rails.application.routes.draw do
  # Root route
  root "financial_info#new"

  # Routes for financial information
  resources :financial_info, only: [:new, :create]

  # Route for health check
  get "up" => "rails/health#show", as: :rails_health_check

  # Routes for Progressive Web App (PWA) dynamic files
  get "service-worker" => "rails/pwa#service_worker", as: :pwa_service_worker
  get "manifest" => "rails/pwa#manifest", as: :pwa_manifest

  # Routes for stocks
  get "/stocks/:symbol", to: "stocks#show"

  # Routes for users
  resources :users, only: [:new, :create]
end
