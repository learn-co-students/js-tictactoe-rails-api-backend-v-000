Rails.application.routes.draw do
  root 'home#index'
  resources :games, only: [:new, :create, :index, :show, :edit, :update]
  # resources :games, except: [:destroy]
end
