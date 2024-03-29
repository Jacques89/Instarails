Rails.application.routes.draw do
  get 'search' => 'search#index'
  devise_for :users
  get 'home/index'
  root to: 'home#index'

  resources :users, only: [:show, :edit, :update]
  resources :posts, only: [:new, :create, :show, :destroy]
end
