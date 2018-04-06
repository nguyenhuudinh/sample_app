Rails.application.routes.draw do


  get 'users/new'

	get '/home', to: 'static_pages#home'

  get '/help', to: 'static_pages#help'

  get '/about', to: 'static_pages#about'
  
  get '/contact', to: 'static_pages#contact'
  

  post '/signup', to: 'users#create'

  get '/index', to: 'users#index'

  get '/show', to: 'users#show'


  get '/login', to: 'sessions#new'

  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  patch '/users/:id/edit', to: 'users#edit'

  get '/users', to: 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  resources :users
  resources :account_activations, only: [:edit]
end
