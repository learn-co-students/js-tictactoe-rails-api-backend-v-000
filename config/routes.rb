Rails.application.routes.draw do
  root 'home#index'

  resources :games, only: [:index, :show, :create, :update]
  #post '/games', to: 'games#create'
  #get '/games/:id', to: 'games#show'
  #patch '/games/:id', to: 'games#update'
  #get '/games', to: 'games#index'
end
