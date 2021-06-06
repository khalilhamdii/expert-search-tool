Rails.application.routes.draw do
  devise_for :users
  resources :users, only: %i[show]
  root 'homepage#index'
end
