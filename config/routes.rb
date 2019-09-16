Rails.application.routes.draw do

  resources :professional_formations do
    resources :commentaire_professionels do 
      resources :reponse_professionnels
    end
  end
  
  resources :offre_emplois do
    resources :commentaire_emplois do 
      resources :reponse_emplois
    end
  end

  resources :formation_academiques  do
    resources :commentaire_academiques do 
      resources :reponse_academiques
    end
  end

  resources :places
  root to: "publications#index"
  devise_for :users
  
  resources :users do
 	  resources :images, only:[:create]
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
