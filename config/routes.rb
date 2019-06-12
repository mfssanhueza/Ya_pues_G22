Rails.application.routes.draw do
  get 'users/show'
  resources :products
  devise_for :users, controllers: {
        registrations: 'users/registrations'
      }
  resources :users, only: [:show]
  resources :transactions, only: [:create]
  root "products#index"
end
