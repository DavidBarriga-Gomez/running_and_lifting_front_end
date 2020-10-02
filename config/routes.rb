Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'login#index'
  # get '/', to: 'login#index'
  # get '/auth/google_oauth2/callback', to: 'sessions#create'
  # get 'auth/failure', to: redirect('/')


  #google OmniAuth
  get '/login', to: redirect('/auth/google_oauth2')
  get '/logoout', to: 'sessions#destroy'
  get 'auth/:provider/callback', to: 'sessions#googleAuth'
  get 'auth/failure', to: redirect('/')
end
