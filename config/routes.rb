Rails.application.routes.draw do
  devise_for :users
  root 'statics#home'
  
  get 'statics/home'

  get 'statics/about'

  get 'statics/contact'

  resources :users

  resources :recommendations

  resources :types

  resources :genres

  resources :books

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
