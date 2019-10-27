Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Pages
  root to: 'pages#index'
  get 'users_index', to: 'pages#users_index', as: 'users_index'

  #Users
  post 'create_user', to: 'users#create', as: 'create_user'
  post 'clear_users', to: 'users#clear', as: 'clear_users'
  post  'natural_law', to: 'users#natural_law', as: 'natural_law'
  





end
