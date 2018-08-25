Rails.application.routes.draw do
  root 'home#index'
  resources :games, only: [:create, :update, :show, :index]
end
