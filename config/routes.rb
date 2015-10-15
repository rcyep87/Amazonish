Rails.application.routes.draw do
  resources :orders
  resources :items
  resources :users
  resources :lineitems

  root 'items#index'
end
