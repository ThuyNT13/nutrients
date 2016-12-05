Rails.application.routes.draw do
  get 'home/index'

  resources :users, except: :index

  resources :sessions, only: [:new, :create, :destroy]

  root 'home#index'

end
