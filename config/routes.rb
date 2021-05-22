Rails.application.routes.draw do
  root to: 'main#index'

  get '/about', to: 'about#index'

  get '/register', to: 'registrations#new'
  post '/register', to: 'registrations#create'

  get '/login', to: 'sessions#new'
  post '/login', to: 'sessions#create'

  delete '/logout', to: 'sessions#destroy'

  get '/change-password', to: 'passwords#edit'
  patch '/change-password', to: 'passwords#update'

  get '/forgot-password', to: 'password_resets#new'
  post '/forgot-password', to: 'password_resets#create'

  get '/reset-password', to: 'password_resets#edit'
  patch '/reset-password', to: 'password_resets#update'

  get '/auth/twitter/callback', to: 'omniauth_callback#twitter'

  resources :twitter_accounts
  resources :tweets
end
