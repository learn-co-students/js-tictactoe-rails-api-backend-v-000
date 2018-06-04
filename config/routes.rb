Rails.application.routes.draw do
  root 'home#index'
  resources :games, only: [:create, :show, :update, :index]
end
