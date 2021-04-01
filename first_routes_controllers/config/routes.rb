Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # get 'users', to: 'users#index'
  # get 'users/:id', to: 'users#show', as: 'user'
  # post 'users', to: 'users#create'
  # patch 'users/:id', to: 'users#update'
  # delete 'users/:id', to: 'users#destroy'
  
  resources :users, only: [:create, :destroy, :index, :show, :update]
  resources :artworks, only: [:create, :destroy, :index, :show, :update]
  resources :artwork_shares, only: [:create, :destroy, :index]
end
