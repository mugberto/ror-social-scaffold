Rails.application.routes.draw do
  get 'friendships', to: 'friendships#index', as: 'invitations'
  post 'friendship/create', to: 'friendships#create', as: 'send_invitation'
  post 'friendship/update', to: 'friendships#update', as: 'confirm_invitation'
  delete 'friendship/destroy/:id/:status', to: 'friendships#destroy', as: 'reject_invitation' 
  root 'posts#index'

  devise_for :users

  resources :users, only: [:index, :show]
  resources :posts, only: [:index, :create] do
    resources :comments, only: [:create]
    resources :likes, only: [:create, :destroy]
  end
  namespace :api do
    post 'sign_in', to: "authentication#create"
    post 'sign_up', to: "users#create"
    resources :posts, only: [:index, :create] do 
      resources :comments, only: [:index, :create]
    end

  end
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
