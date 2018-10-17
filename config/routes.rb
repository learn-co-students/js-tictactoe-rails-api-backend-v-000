Rails.application.routes.draw do
  root 'home#index'
  resources :games, only: [:create, :index, :show, :update]
end
