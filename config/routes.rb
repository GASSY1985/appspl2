Rails.application.routes.draw do
  devise_for :users
  root "blogs#index"
  resources :users, only: [:index, :edit, :update, :new, :create]
  resources :blogs, only: [:index, :new, :create, :edit,:show]
  post 'blogs/new' => 'blogs#create'
    resources :chats, only: [:index, :new, :create, :edit, :update]
    post 'blogs/:id' => 'chats#create' do
  end
end