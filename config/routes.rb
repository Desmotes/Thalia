Rails.application.routes.draw do
  get 'welcome_page/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'welcome_page#index'
end
