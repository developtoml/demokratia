Rails.application.routes.draw do
    devise_for :users

  root to: 'pages#home'

    resources :questions, only: [:index, :new, :create, :show] do
      member do
        put "like", to: "questions#upvote"
        put  "dislike", to: "questions#downvote"
      end
  end
end

  # Generic syntax:
  # verb 'path', to: 'controller#action'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
