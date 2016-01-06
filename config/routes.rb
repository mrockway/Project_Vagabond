Rails.application.routes.draw do
 
  root 'welcome#index'

  # Example resource route (maps HTTP verbs to controller actions automatically):
  resources :users

  resources :posts

  get '/logout', to: "sessions#destroy", as: "logout"
  get '/login', to: "sessions#new", as: "login"
  resources :sessions, only: [:create]

  resources :cities, only: [:new, :create, :index, :show]
  
end
