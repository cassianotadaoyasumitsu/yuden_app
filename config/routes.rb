Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  resources :employees
  resources :companies do
    resources :genbas, only: [:new, :create]
  end
  resources :genbas, only: [:destroy]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
