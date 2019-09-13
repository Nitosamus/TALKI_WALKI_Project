Rails.application.routes.draw do

  resources :professional_formations do
    resources :commentaires do 
      resources :reponses
    end
  end
  
  resources :offre_emplois do
    resources :commentaires do 
      resources :reponses
    end
  end

  resources :formation_academiques  do
    resources :commentaires do 
      resources :reponses
    end
  end

  resources :domaines
  resources :places
  root to: "publications#index"
  devise_for :users
  
  resources :users do
 	  resources :images, only:[:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
