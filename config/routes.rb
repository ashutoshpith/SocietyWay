Rails.application.routes.draw do
  devise_for :members
  resources :tsconnects
  get 'home/index'
  get 'home/member'
  get 'home/admin'
  resources :billings
  resources :flats
  resources :tenants
  resources :shops
  resources :owners
  devise_for :admins
 root 'home#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
