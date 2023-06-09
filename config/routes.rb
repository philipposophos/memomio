Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"
  get '/about', to: 'pages#about'

  resources :memories do
    resources :notes, only: [:new, :create]
    resources :tags, only: [:new, :create]
  end

  resources :notes, only: [:edit, :update, :destroy]

  resources :tags, only: [:destroy]
end
