Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Pages
  root to: 'pages#index'
  get 'users_index', to: 'pages#users_index', as: 'users_index'
  get 'test_page', to: 'pages#test_page', as: 'test_page'
  get 'user_table', to: 'pages#user_table', as: 'user_table'

  #Users
  post 'create_user', to: 'users#create', as: 'create_user'
  post 'clear_users', to: 'users#clear', as: 'clear_users'
  post 'modify_users', to: 'users#modify', as: 'modify_users'






end
