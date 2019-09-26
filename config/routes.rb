
  Rails.application.routes.draw do

  get root to: "homes#index"

  devise_for :users
  resources :afs
  resources :pfs
  resources :jobs
  resources :fields
  resources :mfs
  resources :ffs
  resources :comments
  resources :answers
  resources :orders
  resources :likes
  resources :users
  resources :images, only:[:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :places
end

