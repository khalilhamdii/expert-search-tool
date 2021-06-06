Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[show]
  resources :friendships, only: %i[index new create]
  get 'users/:id/friendlist', to: 'users#friend_list', as: 'friendlist'
  get 'friendships/destroy', to: 'friendships#destroy'
  get 'friendships/update', to: 'friendships#update'
  root 'homepage#index'
end
