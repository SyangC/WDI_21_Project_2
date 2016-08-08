Rails.application.routes.draw do

  root "statics#home"

  resources :recommendations

  get 'statics/home'

  get 'statics/about'

  get 'statics/contact'

  get 'statics/browse'

  post 'comments' => 'comments#create', as: "create_comment"

  devise_for :users

  resources :books
  resources :users
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
