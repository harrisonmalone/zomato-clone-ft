Rails.application.routes.draw do
  root to: "restaurants#index"
  devise_for :users
  resources :restaurants, only: [:index, :show, :new, :create, :destroy]
end
