Rails.application.routes.draw do
  resources :restaurants, only: [:index, :show, :new, :create]
end
