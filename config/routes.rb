Rails.application.routes.draw do

  root 'home#index'
  resources :games,  only: [:show, :index, :update, :create]

end
