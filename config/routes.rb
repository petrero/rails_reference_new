RailsReferenceNew::Application.routes.draw do
  root to: 'products#index'
  resources :products
  resources :members
end
