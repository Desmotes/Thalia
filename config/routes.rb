Rails.application.routes.draw do

  get 'dashboard/index'

  resources :users
  root 'welcome_page#index'
  get 'sessions/login'
  match 'login', to:  'sessions#login', via: :all
  # get 'welcome_page/index'
  get '/index',  to: 'welcome_page#index'
  get '/logout',  to: 'sessions#logout'
  # get '/profile', to: 'sessions#login'

end
