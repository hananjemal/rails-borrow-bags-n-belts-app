Rails.application.routes.draw do
  devise_for :users
  root to: "items#index"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  resources :items do
    resources :bookings, only: [:new,:create]
  end
  get 'profile', to: 'users#show'

  resources :bookings, only: [:destroy]
end
