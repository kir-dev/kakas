Rails.application.routes.draw do
  # get 'users/index'
  devise_scope :user do
    get '/login' => 'devise/sessions#new'
    get '/register' => 'devise/registrations#new', as: "new_user_registration"
  end
  devise_for :users
  resources :users
  resources :posters
  resources :meals
  resources :categories
  resources :pages, only: [:show, :edit, :update]
  resources :events
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  match '/team', to: 'users#index', via: 'get'
  
  get '/', to: 'articles#index'
  root to: redirect('/')

  get 'errors/not_found'
  match '/404', to: 'errors#not_found', via: :all

  post "/upload_image" => "upload#upload_image", as: :upload_image
  get "/download_file/:name" => "upload#access_file", as: :upload_access_file, name: /.*/
end
