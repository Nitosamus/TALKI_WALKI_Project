
 	resources :images, only:[:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  end
  resources :places
  resources :users do
  root to: "publications#index"
end
Rails.application.routes.draw do