Rails.application.routes.draw do
  root 'welcomes#index'
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :teams, only: [:new, :create, :show] do 
    resources :players, only: [:create, :show]
  end
  resource :dashboard, only: [:show]
end
