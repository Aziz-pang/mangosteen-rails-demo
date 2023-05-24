Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  get '/users/:id', to: 'users#show'
  get '/users', to: 'users#index'
  post '/users', to: 'users#create'

  namespace :api do
    namespace :v1 do
      resources :validation_codes
      resources :session, only: [:create, :destroy]
      resource :me, only: [:show]
      resources :items, only: [:create, :index]
    end
  end
end
