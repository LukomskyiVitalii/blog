Rails.application.routes.draw do
  devise_for :users
  resources :users, only: [:index,:show,:destroy,:edit,:update] 
  root "articles#index"

  resources :articles do
    resources :comments
  end
end
