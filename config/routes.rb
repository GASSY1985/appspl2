Rails.application.routes.draw do
  devise_for :users
  root "blogs#index"
  resources :users, only: [:index, :edit, :update, :new, :create] do
    resources :blogs, only: [:index, :new, :create, :edit, :update]
    resources :blog_edit, only: [:new, :create, :edit, :update,:delete]
    resources :chats, only: [:index, :new, :create, :edit, :update] do
    end
  end
end