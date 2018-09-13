Rails.application.routes.draw do
  resources :tsconnects
  get 'home/index'
  resources :billings
  resources :flats
  resources :tenants
  resources :shops
  resources :owners
  devise_for :admins
 root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
