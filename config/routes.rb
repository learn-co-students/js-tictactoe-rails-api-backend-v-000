Rails.application.routes.draw do

  root 'home#index'
  resources :games, only: [:index, :update, :show, :create]
end
