Rails.application.routes.draw do

  root 'home#index'

  resources :games
  #resources :games, only: [:index, :show, :create, :update]
end
