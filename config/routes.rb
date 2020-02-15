Rails.application.routes.draw do
  root 'users#index'
  get '/help', to: 'users#help'
end
