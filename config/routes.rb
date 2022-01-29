Rails.application.routes.draw do
  devise_for :users
  root to: "properties#index"
  resources :properties, only: [:index, :new, :create, :show, :edit, :update]
  resources :users, only: [:edit, :update]
end
