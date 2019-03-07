Rails.application.routes.draw do
  root 'restaurants#index'
  resources :restaurants do
    resources :tables, only: [:index, :show]
  end
  resources :orders
end
