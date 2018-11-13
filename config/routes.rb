Rails.application.routes.draw do
  resources :sales_staffs
  resources :bills
  resources :bill_tos
  resources :companies
  devise_for :users
  resources :members do
    member do
      get 'bill'
    end
  end
  root to: 'members#index'
end
