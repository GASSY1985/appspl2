Rails.application.routes.draw do
  devise_for :users
  root "blogs#index"
  resources :users, only: [:index, :edit, :update, :new, :create]
  resources :blogs, only: [:index, :new, :create, :edit,:show] do
    resources :chats, only: [:index, :new, :create, :edit, :update, :show]
    namespace :api do
      resources :chats, only: [:index, :show], defaults: { format: 'json' }
    end
  end
end