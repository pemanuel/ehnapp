Rails.application.routes.draw do
  
  resources :events

  resources :worklists do 
    collection { post :import }
  end

  devise_for :users
  get 'welcome/index'
  get 'welcome/new'
  get 'welcome/search'
  get 'welcome/reports'
  get 'welcome/print'
  get 'welcome/help'

  resources :patients do
    collection { post :import }
  
    resources :referrals
  end
  
  resources :referrals do
    collection { post :import }
  end
  
  resources :conversations, only: [:index, :show, :destroy] do
    member do
      post :reply
      post :restore
      post :mark_as_read
    end
    collection do
      delete :empty_trash
    end
  end
  
  resources :messages, only: [:new, :create]
  
  root to: 'events#index'


end
