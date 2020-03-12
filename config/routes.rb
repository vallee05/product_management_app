Rails.application.routes.draw do
  root to: 'trades#index'
  resources :trades
  resources :products, only: [:index]
end
