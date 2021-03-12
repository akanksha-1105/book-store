Rails.application.routes.draw do

  root "customers#index"

  resources :customers
  resources :book_details
  resources :authers
  resources :suppliers
  resources :reviews


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
