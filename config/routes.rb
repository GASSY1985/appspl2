Rails.application.routes.draw do
  devise_for :users
  root "blogs#index"
  resources :users, only: [:index, :edit, :update, :new, :create]
  resources :blogs, only: [:index, :new, :create, :edit, :update ,:show] do
    resources :chats, only: [:index, :new, :create, :edit, :update]
  end
end