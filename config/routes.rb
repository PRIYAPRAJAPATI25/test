Rails.application.routes.draw do
  devise_for :users, controllers: { sessions: 'users/sessions', registrations: 'users/registration'}
  get 'countries/index'
  root 'countries#index'


  #get 'delers/index'
 # get 'delers/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  #resources :users 
  resources :products
  resources :countries
  resources :product_types
end
