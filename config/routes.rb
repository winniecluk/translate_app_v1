Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "static_pages#index"

  resources :users, only: [:new, :create, :show]

  resources :sessions, only: [:new, :create, :destroy]
  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"

  # get "/users/new", to: "users#new"

  # post "/users", to: "users#create"

end
