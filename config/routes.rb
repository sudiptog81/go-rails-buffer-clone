Rails.application.routes.draw do
  root to: 'main#index'

  get '/about', to: 'about#index'

  get '/register', to: 'registration#new'
  post '/register', to: 'registration#create'

  get '/login', to: 'session#new'
  post '/login', to: 'session#create'

  delete '/logout', to: 'session#destroy'

  get '/change-password', to: 'password#edit'
  patch '/change-password', to: 'password#update'
end
