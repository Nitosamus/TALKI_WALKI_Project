
  Rails.application.routes.draw do
  root to: "homes#index"

  devise_for :users
  
  resources :afs, only: [:index, :show] do
    resources :fields, only: [:show]
  end
  resources :pfs, only: [:index, :show] do
    resources :fields, only: [:show]
  end
  resources :fields, only: [:index, :show] do
    resources :jobs, only: [:index, :show] do
      resources :jobcoms, except: [:index, :show] do
        resources :jobans, except: [:index, :show]
      end
    end
  end
  
  resources :mfs, only: [:index, :show] do
    resources :comments, except: [:index, :show] do
      resources :answers, except: [:index, :show] do
        resources :likes, only: [:create] 
      end
    end
  end
  resources :ffs, only: [:index, :show] do
    resources :ffcoms, except: [:index, :show] do
      resources :ffans, except: [:index, :show] do
        resources :ffanslikes, only: [:create]
      end
    end
  end

  # likes pour commentaire

  resources :mfs, only: [:index, :show] do
    resources :comments, except: [:index, :show] do
        resources :lcs, only: [:create] 
    end
  end
  resources :ffs, only: [:index, :show] do
    resources :ffcoms, except: [:index, :show] do
        resources :ffcomlikes, only: [:create]
    end
  end

  # likes pour commentaires et réponses de jobs
    resources :jobs, only: [:index, :show] do
      resources :jobcoms, except: [:index, :show] do
        resources :jobcomlikes, only: [:create]
      end
    end
    
    resources :jobs, only: [:index, :show] do
      resources :jobans, except: [:index, :show] do
        resources :jobanslikes, only: [:create]
      end
    end



  resources :orders, only: [:create]
  resources :users, only: [:create]
  resources :images, only:[:show]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :places
end

