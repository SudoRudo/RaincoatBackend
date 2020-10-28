Rails.application.routes.draw do
  namespace :api do
    namespace :v1 do
      resources :users, only: [:create]
      post '/login', to: 'auth#create'
      get '/profile', to: 'users#profile'
      resources :items
      resources :item_tags
      resources :tags, only: [:show, :index]
      resources :cities
      resources :user_cities 
      resources :outfits
      resources :item_outfits
    end
  end
end
