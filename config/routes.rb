Rails.application.routes.draw do
  get    '/login',  to: 'sessions#new',     as: 'new_login'
  post   '/login',  to: 'sessions#create',  as: 'login'
  delete '/logout', to: 'sessions#destroy', as: 'logout'

  resources :orders
  resources :items
  resources :users
  resources :lineitems

  resources :orders do
    resources :lineitems
  end

  root 'items#index'
end
