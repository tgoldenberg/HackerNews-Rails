Rails.application.routes.draw do
  resources :user, only: [:new, :edit]
  post '/users' => 'users#create', as: 'create_user'
  delete '/users' => 'users#destroy', as: 'delete_user_account'
  resources :posts do
    resources :comments
  end
  get '/login' => 'sessions#new'
  post '/login' => 'sessions#create', as: 'create_session'
  delete '/logout' => 'sessions#destroy', as: 'logout'
  root 'pages#home'

end
