Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "welcome#index"

  resources :users, except: [:index, :edit]

  resources :projects do
    resources :bids end

  resources :sessions, only: [:new, :create, :destroy]

  patch "/bids/:id/complete", to: "bids#complete"
  patch "/projects/:id/completeclient", to: "projects#completeclient"

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  get "/dashboard", to: "users#dashboard"
  # get "/accounts", to: "users#show"
  get "/accounts/edit", to: "users#edit"
  get "/vendors", to: "users#index"
  get "/contact", to: "welcome#contact"
  # get "/vendor/:id", to: "users#show"

  # get "/jobs", to: "jobs#index"

end
