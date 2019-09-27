
  Rails.application.routes.draw do
  root to: "homes#index"

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
  
  resources :mfs, only: [:index, :show] do
    resources :comments, only: [:create] do
      resources :answers, except: [:index, :show] do
        resources :likes, only: [:create] 
      end
    end
  end
  resources :ffs, only: [:index, :show] do
    resources :comments, only: [:create] do
      resources :answers, except: [:index, :show] do
        resources :likes, only: [:create]
      end
    end
  end
  resources :orders, only: [:create]
  resources :users, only: [:create]
  resources :images, only:[:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :places
end

