Rails.application.routes.draw do

  resources :recommendations
  root "statics#home"

  get 'statics/home'

  get 'statics/about'

  get 'statics/contact'

  get 'statics/browse'

  devise_for :users

  resources :books
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
