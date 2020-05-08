Rails.application.routes.draw do
  devise_for :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # dashboard
  get "/dashboard" => "accounts#index"
  get "profile/:username" => "accounts#profile", as: :profile


  root to: "public#homepage"

  resources :posts, only: [:new, :create, :show]
end
