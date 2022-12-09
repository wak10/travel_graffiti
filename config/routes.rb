Rails.application.routes.draw do
  root 'posts#index'
  resources :posts
  get "posts/register" => "posts#register"
end
