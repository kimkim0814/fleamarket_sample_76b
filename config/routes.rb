Rails.application.routes.draw do
  root 'items#index'
  get 'mypages/index'
  get 'mypages/logout'
  get 'mypages/card'
end