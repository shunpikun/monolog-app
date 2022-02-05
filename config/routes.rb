Rails.application.routes.draw do
  devise_for :users
  root to: "properties#index"
  resources :properties do
    collection do
      get 'search'
    end
  end
  resources :users, only: [:edit, :update]
end