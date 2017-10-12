Rails.application.routes.draw do
  

  root to: "pages#show", page:'home'
  mount ActionCable.server => '/cable'

  get "pages/show", page:'family', as: 'family'
  get "pages/show", page:'activation', as: 'activation'
  
  namespace :admin do
    resources :users
    resources :advertisements
    resources :apartments
    resources :common_areas
    resources :complaints
    resources :newsletters
    resources :pets
    resources :vehicles
    resources :werehouses
    resources :workers
    resources :decisions
    resources :hobbies

    root to: "users#index"
  end

  resources :decisions
  resources :children
  resources :chats
  resources :workers
  resources :common_areas
  resources :newsletters
  resources :advertisements
  resources :complaints
  resources :vehicles
  resources :pets
  resources :apartments
  resources :werehouses
  
  devise_for :users, controllers: {
  sessions: 'users/sessions',
  registrations: 'users/registrations'
  }

  resources :decisions do 
    member do
      put "like", to: "decisions#upvote"
      put "dislike", to: "decisions#downvote"
    end
  end

  namespace :api, defaults: { format: "json" } do
    namespace :v1 do
      resources :users
      resources :decisions
      resources :children
      resources :chats
      resources :common_areas
      resources :advertisements
      resources :complaints
      resources :vehicles
      resources :pets
      resources :werehouses
    end
  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
