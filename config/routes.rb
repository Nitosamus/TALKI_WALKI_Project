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
        resources :like
      end
    end
  end
  
  resources :offre_emplois do
    resources :commentaire_emplois do 
      resources :reponse_emplois do 
        resources :like
      end
    end
  end

  resources :formation_academiques  do
    resources :commentaire_academiques do 
      resources :reponse_academiques do
        resources :like
      end
    end
  end


    resources :places
    resources :users 
    root to: "publications#index"
  resources :users do
    resources :images, only:[:create]
end
end