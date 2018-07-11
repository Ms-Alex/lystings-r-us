Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  # resources :reviews, only: [:new, :create, :edit, :update]

  # resources :listings
  resources :favorites, only: [:create]

  # resources :reviews, only: [:new, :create, :edit, :update]
  resources :listings do
    resources :reviews, only: [:new, :create, :edit, :update]
  end
  # post '/listings/:listing_id/reviews', to: 'reviews#create', as: '/listings/:listing_id'




  # get '/' => 'users#index'

  get '/signup', to: 'users#new'
  get '/home', to: 'users#index'
  resources :users
  # resources  :sessions
  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  resources :conversations do
    resources :messages
  end


end
