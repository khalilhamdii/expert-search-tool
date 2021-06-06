Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[show]
  resources :friendships
  root 'homepage#index'
end
