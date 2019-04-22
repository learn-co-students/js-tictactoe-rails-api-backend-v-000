Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :games, only: [:show, :index, :udpate, :create]
  get '/games/:id/:state', to: 'games#update'
end
