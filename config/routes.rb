Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  # get 'restaurants', to: 'restaurants#index'
  # get '/restaurants/new', to: 'restaurants#new'
  # get '/restaurants/:id', to: 'restaurants#show'
  # post '/restaurants', to: 'restaurants#create'
  # post '/restaurants/:restaurant_id/reviews/:id', to: 'reviews#show'
  resources :restaurants, except: [:edit, :update, :delete] do
    resources :reviews, only: [:new, :create]
  end
  root to: "restaurants#index"
end
