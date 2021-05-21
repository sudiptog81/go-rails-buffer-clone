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

  get '/forgot-password', to: 'password_reset#new'
  post '/forgot-password', to: 'password_reset#create'

  get '/reset-password', to: 'password_reset#edit'
  patch '/reset-password', to: 'password_reset#update'

  get '/auth/twitter/callback', to: 'omniauth_callback#twitter'
end
