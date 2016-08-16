Rails.application.routes.draw do
  devise_for :users
  resources :paperclips
  resources :posts
    root 'posts#index'
end


