Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :orders
  resources :users, :except => [:edit]
  resources :products
  resources :locations
  resources :order_items
  resources :pages

  root to: 'pages#home'
  get '/users/edit' => 'users#edit', :as => :edit_user
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create'
  delete '/login' => 'sessions#destroy'
end
