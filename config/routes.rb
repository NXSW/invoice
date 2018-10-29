Rails.application.routes.draw do
  resources :bills
  resources :bill_tos
  resources :companies
  devise_for :users
  resources :members
  resources :sign_out
  root to: 'members#index'
end
