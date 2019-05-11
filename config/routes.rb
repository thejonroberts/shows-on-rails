# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
Rails.application.routes.draw do
  resources :venues
  resources :addresses
  devise_for :users
  resources :users, only: [:index, :show, :edit, :update]

  root 'home#index'
end
