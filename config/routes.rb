Rails.application.routes.draw do
  resources :t_s_connects
  resources :billings
  resources :flats
  resources :tenants
  resources :shops
  resources :owners
  devise_for :admins
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
