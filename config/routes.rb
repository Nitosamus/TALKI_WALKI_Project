
  Rails.application.routes.draw do
  root to: "admins#index"
  get root to: "homes#index"

  devise_for :users
  resources :afs, only: [:index, :show] do
    resources :fields, only: [:show]
  end
  resources :pfs, only: [:index, :show] do
    resources :fields, only: [:show]
  end
  resources :jobs, only: [:index, :show] do
    resources :fields, only: [:show]
  end
  
  resources :mfs, only: [:index, :show]
  resources :ffs, only: [:index, :show]
  resources :comments, only: [:create]
  resources :answers, only: [:create]
  resources :orders, only: [:create]
  resources :likes, only: [:create]
  resources :users, only: [:create]
  resources :images, only:[:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :places
end

