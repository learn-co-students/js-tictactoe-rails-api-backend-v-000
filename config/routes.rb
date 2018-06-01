Rails.application.routes.draw do
  root 'home#index'

  #resources :games, only: %w[:index :show :create :update]
  # can also write the above as:
  resources :games, only: [:index, :show, :create, :update]
end
