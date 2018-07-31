Rails.application.routes.draw do

  resources :followers
  resources :articles
  devise_for :users

  root to: 'articles#index'

  resources :articles do
    resources :comments
  end
end
