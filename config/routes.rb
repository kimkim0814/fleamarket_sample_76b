Rails.application.routes.draw do
  devise_for :users, controllers: {
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
  get 'mypages/index'
  get 'mypages/logout'
  get 'mypages/card'
  resources :items do
    resources :comments, only: :create
  end

  resources :items  do
    get :itemsbuy
  end    
end