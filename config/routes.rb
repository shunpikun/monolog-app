Rails.application.routes.draw do
  devise_for :users
  root to: "properties#index"
  resources :properties
    collection do
      get 'seach'
    end
  resources :users, only: [:edit, :update]
end
