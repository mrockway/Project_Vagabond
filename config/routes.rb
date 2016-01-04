Rails.application.routes.draw do
 
  root 'welcome#index'

  # Example resource route (maps HTTP verbs to controller actions automatically):
  resources :users

  resources :posts

  resources :sessions, only: [:new, :create, :destroy]

  
end
