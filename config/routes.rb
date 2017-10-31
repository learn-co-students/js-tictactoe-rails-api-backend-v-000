Rails.application.routes.draw do
 
  root 'home#index'
  post '/games', to: 'games#create'
  get '/games/:id', to: 'games#show'
  patch '/games/:id', to: 'games#update'
  get '/games', to: 'games#index'
  get '/test', to: 'games#test_index'
end


# resources :games, only: [:create, :show, :update, :index]
# Create — POST — /games
# Show — GET — /games/:id
# Update — PATCH — /games/:id
# Index — GET — /games