Rails.application.routes.draw do
  get 'home/index'

  resources :users, except: :index

  get 'users' => 'home#index'

  resources :sessions, only: [:new, :create, :destroy]

  root 'home#index'

end
