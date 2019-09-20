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
>>>>>>> 7a33d3e1445b146e7f9fb8ab00f174ea6316706b
  resources :users do
 	  resources :images, only:[:create]
<<<<<<< HEAD
  end
  resources :rooms
  resources :room_messages
  
end
||||||| merged common ancestors
  end
end
=======
end
end
>>>>>>> 7a33d3e1445b146e7f9fb8ab00f174ea6316706b
