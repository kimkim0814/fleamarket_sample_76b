Rails.application.routes.draw do
  root 'items#index'
  get 'mypages/index'
end