Rails.application.routes.draw do
  devise_for :users
  resources :photos
  resources :meals
  resources :categories
  resources :pages
  resources :events
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  get '/', to: 'articles#index'
  root to: redirect('/')
end
