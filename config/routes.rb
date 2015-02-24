Rails.application.routes.draw do
  devise_for :users
  root 'links#index'
  
  resources :links do
    member do
      put 'like', to: 'link#upvote'
      put 'dislike', to: 'links#downvote'
    end
  end
end
