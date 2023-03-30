Rails.application.routes.draw do
  devise_for :users
  root "products#index"
  resources :products
  # resources :checkout, only: [:create]
  post "checkout/create", to: "checkout#create"
  post "webhooks", to: "webhooks#create"
  get "success", to: "checkout#success"
  get "cancel", to: "checkout#cancel"
  post "products/add_to_cart/:id", to: "products#add_to_cart", as: "add_to_cart"
  delete "products/remove_from_cart/:id", to: "products#remove_from_cart", as: "remove_from_cart"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
