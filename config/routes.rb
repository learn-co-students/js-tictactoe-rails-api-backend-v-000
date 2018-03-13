Rails.application.routes.draw do
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'home#index'

  resources :games, only: %w[index show create update]
  #get 'games/index', to: 'games#index'
  #get 'games/create', to: 'games#index'
  #get 'games/:id/show', to: 'games#index'
  #get 'games/:id/update', to: 'games#index'


end
