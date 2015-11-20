Rails.application.routes.draw do
  resources :orders
  resources :items
  resources :users
  resources :lineitems

  get     'login',   to: "sessions#new",     as: "new_login"
  post    '/login',  to: 'sessions#create',  as: 'login'
  delete  '/logout', to: 'sessions#destroy', as: 'logout'

  root 'items#index'
end
