Rails.application.routes.draw do
  get 'sessions/new'
  root 'users#index'
  get '/help', to: 'users#help'
  get '/sign_up', to: 'users#new'
  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'
  resources :users
end
