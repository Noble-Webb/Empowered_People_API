Rails.application.routes.draw do
  resources :users
  resources :posts
  resources :comments
  resources :extinct_animals
  post '/auth', to: 'auth#create'
  post '/signup', to: 'user#create'
  get '/current_user', to: 'auth#show'
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
