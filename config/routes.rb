Rails.application.routes.draw do
  resources :posts
  devise_for :users
    root "posts#index"
    get 'new' => 'posts#new'
end
