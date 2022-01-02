Rails.application.routes.draw do
  get 'properties/index'
  root to: "properties#index"
end
