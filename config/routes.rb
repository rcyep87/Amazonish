Rails.application.routes.draw do
  resources :orders
  resources :items
  resources :users

  root 'items#index'
end
