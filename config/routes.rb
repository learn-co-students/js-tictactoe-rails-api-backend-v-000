Rails.application.routes.draw do
  get 'home', to: 'home#index'
  root 'home#index'
  resources :games
end
