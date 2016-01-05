Rails.application.routes.draw do
 
  get 'cities/index'

  get 'cities/show'

  get 'cities/new'

  get 'cities/create'

  root 'welcome#index'

  # Example resource route (maps HTTP verbs to controller actions automatically):
  resources :users

  resources :posts

  resources :sessions, only: [:create]
  get '/logout', to: "sessions#destroy", as: "logout"
  get '/login', to: "sessions#new", as: "login"


  
end
