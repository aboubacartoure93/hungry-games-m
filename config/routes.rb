Rails.application.routes.draw do

  get 'signin', to: 'sessions#new'
  post 'signin', to: 'sessions#create'
  delete 'signout', to: 'sessions#destroy'
  get 'cuisine', to: 'restaurants#search'
  get 'cuisines/:cuisine', to: 'restaurants#cuisine', as: 'cuisine_name'
  get 'events', to: 'events#list'
  post 'roulette', to: 'events#roulette'

  resources :yelp, only: [:index]
  resources :restaurants do
  	resources :events, shallow: true do
  		member do
  			post 'join'
        delete 'leave'
  		end
  	end
  end

  resources :users
  root 'restaurants#index'
end
