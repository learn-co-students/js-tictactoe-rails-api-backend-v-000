Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  resources :games, only: [:create, :show, :index, :update]
  #get 'games/:id/game_data', to: 'games#game_data'
end
