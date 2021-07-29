Rails.application.routes.draw do
  get 'countries/index'
  root 'users#index'

  #get 'delers/index'
 # get 'delers/new'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :users 
  resources :products
  resources :countries
end
