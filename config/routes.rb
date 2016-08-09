Rails.application.routes.draw do

  resources :types
  root "statics#home"

  get 'statics/home'

  get 'statics/about'

  get 'statics/contact'

  get 'statics/browse'

  post 'comments' => 'comments#create', as: "create_comment"

  devise_for :users

  resources :books
  resources :users

  resources :recommendations do 
    member do
      put "like", to: "recommendations#upvote"
      put "dislike", to: "recommendations#downvote"
    end
  end
end
