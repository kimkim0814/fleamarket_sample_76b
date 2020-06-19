Rails.application.routes.draw do
  devise_for :users, controllers: {
    omniauth_callbacks: 'users/omniauth_callbacks',
    registrations: 'users/registrations',
    sessions: 'users/sessions',
  }
  devise_scope :user do
    get 'identifications', to: 'users/registrations#new_identification', as: :new_identification
    post 'identifications', to: 'users/registrations#create_identification'
    get 'addresses', to: 'users/registrations#new_address', as: :new_address
    post 'addresses', to: 'users/registrations#create_address'
  end
  root 'items#index'
  namespace :items do
    resources :searches, only: :index
  end
  resources :categories, only: [:index, :show]
  get 'mypages/index'
  get 'mypages/logout'
  get 'mypages/card'
  resources :users, only: :new
  resources :items do
    resources :comments, only: :create
    resources :favorites, only: [:create, :destroy]
  end

  resources :items  do
    get :itemsbuy
  end    
end