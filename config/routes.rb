Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :top, only: :index
  resources :posts do
    resources :comments, only: :create
  end
end
