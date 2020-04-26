Rails.application.routes.draw do
    devise_for :users

  root to: 'pages#home'
    resources :questions, only: [:index, :new, :create]

  # Generic syntax:
  # verb 'path', to: 'controller#action'
end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
