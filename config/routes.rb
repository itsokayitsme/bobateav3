Rails.application.routes.draw do
  resources :drink_ingredients
  resources :drinks
  resources :ingredients
  resources :orders
  resources :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
