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
<<<<<<< HEAD
  resources :places
  root to: "publications#index"
||||||| merged common ancestors
<<<<<<< HEAD

  resources :domaines

  resources :places
||||||| merged common ancestors
  resources :places
=======

    resources :places
    resources :users do
    root to: "publications#index"

>>>>>>> front_accueil
  resources :users do
 	  resources :images, only:[:create]

  resources :places
  root to: "publications#index"
  devise_for :users
  
=======


    resources :places
    resources :users 
    root to: "publications#index"
>>>>>>> 9ccd6f38c73697d269a3fc76f54f132d220a32a5
  resources :users do
 	  resources :images, only:[:create]
<<<<<<< HEAD
  end

||||||| merged common ancestors
  end
=======
end
>>>>>>> 9ccd6f38c73697d269a3fc76f54f132d220a32a5
end
