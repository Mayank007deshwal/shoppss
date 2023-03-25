Rails.application.routes.draw do
  devise_for :users
  root "products#index"
  resources :products
  # resources :checkout, only: [:create]
  post "checkout/create", to: "checkout#create"
  post "webhooks", to: "webhooks#create"
  get "success", to: "checkout#success"
  get "cancel", to: "checkout#cancel"
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
