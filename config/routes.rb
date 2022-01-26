Rails.application.routes.draw do
  devise_for :users
  resources :submissions do
    member do
      put 'like', to: "submission#upvote"
      put 'dislike', to: "submission#downvote"
    end
  end
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
   # root "articles#index"
  root 'submissions#index'
 
end
