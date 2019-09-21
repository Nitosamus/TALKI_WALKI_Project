
  Rails.application.routes.draw do
  
  
 
  resources :images, only:[:create]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
   
    devise_for :users
    
  resources :professional_formations do
    resources :like_professionels
    resources :commentaire_professionels do 
      resources :reponse_professionnels 
      end
    end
  
  
  resources :offre_emplois do
    resources :like_emplois
    resources :commentaire_emplois do 
      resources :reponse_emplois 
        
     resources :like_emplois
    resources :commentaire_emplois do 
      resources :reponse_emplois 
       
      end
    end
 

  resources :formation_academiques  do
    resources :like_academiques
    resources :commentaire_academiques do 
      resources :reponse_academiques   
      end 
    resources :commentaire_academiques do
      resources :reponse_academiques  
    end
  


    resources :places
    resources :users 
    root to: "publications#index"
  resources :users do
    resources :images, only:[:create]
end
end
