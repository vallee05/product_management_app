Rails.application.routes.draw do
  root to: 'trades#index'
  resources :trades
end
