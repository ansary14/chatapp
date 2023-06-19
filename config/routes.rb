# frozen_string_literal: true

Rails.application.routes.draw do
  resources :rooms
  root 'pages#home'
  devise_scope :user do
    # Redirects signing out users back to sign-in
    get 'users', to: 'devise/sessions#new'
  end
  # Redirects to user account for private chat
  get 'user/:id', to: 'users#show', as: 'user'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
