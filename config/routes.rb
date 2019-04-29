# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :addresses
  devise_for :users
  resources :users, only: [:show, :index]

  root 'home#index'
end
