Rails.application.routes.draw do
  # get 'users/index'
  devise_for :users
  scope '/admin' do
    resources :users
  end
  resources :posters
  resources :meals
  resources :categories
  resources :pages
  resources :events
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match '/users',   to: 'users#index',   via: 'get'

  get '/', to: 'articles#index'
  root to: redirect('/')
end
