Rails.application.routes.draw do
  devise_for :empleados
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get 'home/index'
  root 'home#index'
  resources :clientes
  resources :empleados
end
