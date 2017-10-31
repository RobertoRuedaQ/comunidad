Rails.application.routes.draw do
  root to: "pages#home"
  get "pages/show", page:'family', as: 'family'
  get "pages/administrate_user", as: 'activation'

  resources :products, only: [:index]
  resource :cart, only: [:show]
  resources :order_items, only: [:create, :update, :destroy]

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

  namespace :delivery do
    resources :products
    resources :orders
    resources :order_statuses
    resources :order_items
  end
  
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
    resources :products
    root to: "users#index"
  end

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
      resources :apartments
      resources :advertisements
      resources :common_areas
      resources :complaints
      resources :orders
    end
  end

  resources :users, only: [:index, :update, :destroy]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
