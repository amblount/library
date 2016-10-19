Rails.application.routes.draw do
  get 'sessions/new'

  get 'users/new'

  get 'users/edit'

  get 'users/show'

  root "users#index"

  get "/login", to: "sessions#new"

  post "/sessions/new", to: "sessions#create"

  delete "/logout", to: "sessions#destroy"

  resources :users

end
