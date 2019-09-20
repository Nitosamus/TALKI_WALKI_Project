
Rails.application.routes.draw do

  resources :images, only:[:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_for :users
  resources :professional_formations do
    resources :commentaires do 
      resources :reponses
    end
  end

  
  resources :professional_formations do
    resources :commentaire_professionels do 
      resources :reponse_professionnels do
        resources :like_professionels
      end
    end
  end
  
  resources :offre_emplois do
    resources :commentaire_emplois do 
      resources :reponse_emplois do 
        resources :like_emplois
      end
    end
  end

  resources :formation_academiques  do
    resources :like_academiques
    resources :commentaire_academiques do
      resources :like_academiques 
      resources :reponse_academiques  do
        resources :like_academiques   
      end 
    end
  end

  resources :places
  root to: "publications#index"


  resources :places


    resources :users do
    root to: "publications#index"
  resources :users do
 	  resources :images, only:[:create]

  resources :places
  root to: "publications#index"
  devise_for :users
end