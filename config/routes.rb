Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :orders
  resources :users, :except => [:edit]
  resources :products
  resources :locations
  resources :order_items
  resources :pages
end
