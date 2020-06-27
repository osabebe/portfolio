Rails.application.routes.draw do
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  resources :products, only:[:index, :new, :create, :edit, :update]
  resources :profiles, only:[:index, :new, :create, :edit, :update]
  resources :tops, only:[:index, :new, :create, :edit, :update]
  resources :contacts, only:[:index, :new, :create]
  resources :articles
  root 'products#index'
end
