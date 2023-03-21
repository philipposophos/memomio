Rails.application.routes.draw do
  devise_for :users
  root to: "pages#home"

  resources :memories do
    resources :notes, only: [:new, :create]
    resources :tags, only: [:new, :create]
  end

  resources :notes, only: [:edit, :update, :destroy]

  resources :tags, only: [:destroy]

  get "memories", to: "memories#index"
  get "memories/:id/edit", to: "memories#edit", as: :edit_memorie
  patch "memories/:id", to: "memories#update"
end
