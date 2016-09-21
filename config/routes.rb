Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: "welcome#index"


  resources :users, except: [:index, :show, :edit]

  resources :projects do
    resources :bids end

  resources :sessions, only: [:new, :create, :destroy]

  get "/login", to: "sessions#new"
  get "/logout", to: "sessions#destroy"
  get "/accounts", to: "users#show"
  get "/accounts/edit", to: "users#edit"
  get "/vendors", to: "users#index"

  # get "/jobs", to: "jobs#index"

end
