Rails.application.routes.draw do
  root 'users#index'
  get '/help', to: 'users#help'
  get '/sign_up', to: 'users#new'

  resources :users
end
