Rails.application.routes.draw do

  resources :games, only: [:index, :show, :create, :update]
  root 'home#index'

end
