# == Route Map
#
#                    Prefix Verb   URI Pattern                                                                              Controller#Action
#                    orders GET    /orders(.:format)                                                                        orders#index
#                           POST   /orders(.:format)                                                                        orders#create
#                 new_order GET    /orders/new(.:format)                                                                    orders#new
#                edit_order GET    /orders/:id/edit(.:format)                                                               orders#edit
#                     order GET    /orders/:id(.:format)                                                                    orders#show
#                           PATCH  /orders/:id(.:format)                                                                    orders#update
#                           PUT    /orders/:id(.:format)                                                                    orders#update
#                           DELETE /orders/:id(.:format)                                                                    orders#destroy
#                     users GET    /users(.:format)                                                                         users#index
#                           POST   /users(.:format)                                                                         users#create
#                  new_user GET    /users/new(.:format)                                                                     users#new
#                      user GET    /users/:id(.:format)                                                                     users#show
#                           PATCH  /users/:id(.:format)                                                                     users#update
#                           PUT    /users/:id(.:format)                                                                     users#update
#                           DELETE /users/:id(.:format)                                                                     users#destroy
#                  products GET    /products(.:format)                                                                      products#index
#                           POST   /products(.:format)                                                                      products#create
#               new_product GET    /products/new(.:format)                                                                  products#new
#              edit_product GET    /products/:id/edit(.:format)                                                             products#edit
#                   product GET    /products/:id(.:format)                                                                  products#show
#                           PATCH  /products/:id(.:format)                                                                  products#update
#                           PUT    /products/:id(.:format)                                                                  products#update
#                           DELETE /products/:id(.:format)                                                                  products#destroy
#                 locations GET    /locations(.:format)                                                                     locations#index
#                           POST   /locations(.:format)                                                                     locations#create
#              new_location GET    /locations/new(.:format)                                                                 locations#new
#             edit_location GET    /locations/:id/edit(.:format)                                                            locations#edit
#                  location GET    /locations/:id(.:format)                                                                 locations#show
#                           PATCH  /locations/:id(.:format)                                                                 locations#update
#                           PUT    /locations/:id(.:format)                                                                 locations#update
#                           DELETE /locations/:id(.:format)                                                                 locations#destroy
#               order_items GET    /order_items(.:format)                                                                   order_items#index
#                           POST   /order_items(.:format)                                                                   order_items#create
#            new_order_item GET    /order_items/new(.:format)                                                               order_items#new
#           edit_order_item GET    /order_items/:id/edit(.:format)                                                          order_items#edit
#                order_item GET    /order_items/:id(.:format)                                                               order_items#show
#                           PATCH  /order_items/:id(.:format)                                                               order_items#update
#                           PUT    /order_items/:id(.:format)                                                               order_items#update
#                           DELETE /order_items/:id(.:format)                                                               order_items#destroy
#                     pages GET    /pages(.:format)                                                                         pages#index
#                           POST   /pages(.:format)                                                                         pages#create
#                  new_page GET    /pages/new(.:format)                                                                     pages#new
#                 edit_page GET    /pages/:id/edit(.:format)                                                                pages#edit
#                      page GET    /pages/:id(.:format)                                                                     pages#show
#                           PATCH  /pages/:id(.:format)                                                                     pages#update
#                           PUT    /pages/:id(.:format)                                                                     pages#update
#                           DELETE /pages/:id(.:format)                                                                     pages#destroy
#                      root GET    /                                                                                        pages#home
#                 edit_user GET    /users/edit(.:format)                                                                    users#edit
#                     login GET    /login(.:format)                                                                         sessions#new
#                           POST   /login(.:format)                                                                         sessions#create
#                           DELETE /login(.:format)                                                                         sessions#destroy
#        rails_service_blob GET    /rails/active_storage/blobs/:signed_id/*filename(.:format)                               active_storage/blobs#show
# rails_blob_representation GET    /rails/active_storage/representations/:signed_blob_id/:variation_key/*filename(.:format) active_storage/representations#show
#        rails_disk_service GET    /rails/active_storage/disk/:encoded_key/*filename(.:format)                              active_storage/disk#show
# update_rails_disk_service PUT    /rails/active_storage/disk/:encoded_token(.:format)                                      active_storage/disk#update
#      rails_direct_uploads POST   /rails/active_storage/direct_uploads(.:format)                                           active_storage/direct_uploads#create

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
