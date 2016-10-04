Rails.application.routes.draw do
  resources :users
  root 'welcome_page#index'
  # get 'sessions/login'
  match 'login', to:  'sessions#login', via: :all

  # get 'welcome_page/index'
  get '/index',  to: 'welcome_page#index'
  # get '/profile', to: 'sessions#login'
  get 'users/signin'
  # match 'users/signin', to: 'devise/users#signin', via: :post
  # get  '/signin',    to: 'users#signup'
  # Now, we can the navigate to /users/<id>

end
