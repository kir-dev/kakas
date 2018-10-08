Rails.application.routes.draw do
  resources :meals
  resources :posts
  resources :categories
  resources :users
  resources :pages
  resources :events
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
