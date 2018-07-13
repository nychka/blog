Rails.application.routes.draw do
  
  resources :posts
  get 'home/index'
  get 'profile', to: 'users#profile'

  devise_for :users
  resources :users

  namespace :admin do
    resources :users
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'home#index'
end
