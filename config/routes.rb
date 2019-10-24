Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  #Pages
  root to: 'pages#index'
  get 'gamepage', to: 'pages#gamepage', as: 'gamepage'

  #Users
  post 'create_user', to: 'users#create', as: 'create_user'





end
