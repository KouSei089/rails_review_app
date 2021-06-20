Rails.application.routes.draw do
  root to: 'top#index'

  resources :posts do
    resources :comments, only: %i[create], shallow: true
  end

  resource :profile

  resources :users, only: [:new, :create]
  get 'login' => 'user_sessions#new', :as => :login
  post 'login' => "user_sessions#create"
  post 'logout' => 'user_sessions#destroy', :as => :logout
end
