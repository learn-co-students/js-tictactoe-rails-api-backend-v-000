Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'

  resources :games, only: [:index, :show, :create, :update]
  # resources :games, only: %w[:index :show :create :update] >> another way to write arrays with %w 
end
