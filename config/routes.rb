Rails.application.routes.draw do
  resources :reviews
  resources :listings
  resources :favorites
  resources :users
  resources :realtors
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
