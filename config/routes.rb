Rails.application.routes.draw do
  get 'home/index'

  resources :users, except: :index

  root 'home#index'

end
