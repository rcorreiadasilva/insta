Rails.application.routes.draw do
  devise_for :accounts
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # dashboard
  get "/dashboard" => "accounts#index"
  get "profile/:username" => "accounts#profile", as: :profile
  get "post/card/:post_id" => "cards#save_card", as: :card_post
  get "post/like/:post_id" => "likes#save_like", as: :like_post


  root to: "public#homepage"

  resources :posts, only: [:new, :create, :show]
end
