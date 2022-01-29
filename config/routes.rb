Rails.application.routes.draw do
  devise_for :users
  root to: "properties#index"
  resources :properties
  resources :users, only: [:edit, :update]
end
