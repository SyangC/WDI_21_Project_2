Rails.application.routes.draw do
  root "statics#home"

  get 'statics/home'

  get 'statics/about'

  get 'statics/contact'

  get 'statics/browse'

  post 'comments' => 'comments#create', as: "create_comment"

  devise_for :users

  resources :books
  resources :users, except: [:index]
  resources :comments
  resources :types
  resources :genres
  resources :recommendations, except: [:index] do 
    member do
      put "like", to: "recommendations#upvote"
      put "dislike", to: "recommendations#downvote"
    end
  end
end
