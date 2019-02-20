Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html


  resources :favorites, only: [:create]

  resources :listings do
    resources :reviews, only: [:new, :create]
  end
  # post '/listings/:listing_id/reviews', to: 'reviews#create', as: '/listings/:listing_id'


  resources :favorite_listings, only: [:create, :destroy]

  get '/' => 'users#index'

  get '/signup', to: 'users#new'
  get '/home', to: 'users#index'

  resources :users, except: [:destroy]

  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  resources :conversations do
    resources :messages
  end


end
