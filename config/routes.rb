Rails.application.routes.draw do
  root 'home#index'

  # resources :games, only: %w[index, show, create, update]
  resources :games, only: [:index, :show, :create, :update]
end
