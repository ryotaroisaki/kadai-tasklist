Rails.application.routes.draw do
  
  root to: 'toppages#index'
  
  get "signup", to: "users#new"
  
  resources :users, only: [:new, :create]

  resources :tasks, only: [:create, :destroy, :edit, :update, :show]

get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'
  
end
