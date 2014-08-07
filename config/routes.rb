Rails.application.routes.draw do
  root 'welcomes#index'
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :teams, only: [:new, :create, :show]
  resource :dashboard, only: [:show]
  resources :players, only: [:show]
end
