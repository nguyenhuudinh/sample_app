Rails.application.routes.draw do

  get 'users/new'

	get '/home', to: 'static_pages#home'

  get '/help', to: 'static_pages#help'

  get '/login', to: 'static_pages#login'

  get '/about', to: 'static_pages#about'
  
  get '/contact', to: 'static_pages#contact'

  post '/signup', to: 'users#create'

  get '/index', to: 'users#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
  resources :users
end
