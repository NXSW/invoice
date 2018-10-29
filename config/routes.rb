Rails.application.routes.draw do
  resources :bills
  resources :bill_tos
  resources :companies
  devise_for :users
  resources :members
  root to: 'members#index'
end
