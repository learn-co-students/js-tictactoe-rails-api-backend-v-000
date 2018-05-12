Rails.application.routes.draw do
  root 'home#index'
  post '/games' => 'games#create'
  get '/games/:id' => 'games#show'
  patch '/games/:id' => 'games#update'
  get '/games' => 'games#index'
end
