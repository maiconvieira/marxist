Rails.application.routes.draw do

  get 'page/dashboard', :as => 'dashboard'
  get 'page/login', :as => 'login'

  resources :people
  resources :classifications

  root 'page#login'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
