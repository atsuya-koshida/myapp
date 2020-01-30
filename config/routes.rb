Rails.application.routes.draw do
  devise_for :users
  root to: "posts#index"
  resources :top, only: :index
  resources :tweets do
    resources :comments, only: :create
  end
end
