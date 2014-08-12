Rails.application.routes.draw do
  root 'welcomes#index'
  resource :session, only: [:new, :create, :destroy]
  resources :users, only: [:new, :create]
  resources :players, only: [:new, :create, :show]
  resources :teams, only: [:new, :create, :show] do
    resources :my_players, only: [:index, :new, :create, :show]
  end
  resource :dashboard, only: [:show]
end
