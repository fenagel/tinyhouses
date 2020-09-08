Rails.application.routes.draw do
  get 'trips/show'
  devise_for :users
  root to: 'pages#home'

  resources :tinyhouses do
    resources :trips, only: [ :create ]
  end

  resources :trips, only: [ :destroy, :create ] do
    resources :reviews, only: [ :new, :create ]
  end

  resource :dashboard, only: [ :show ]
  resources :reviews, only: [ :destroy, :edit, :update ]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
