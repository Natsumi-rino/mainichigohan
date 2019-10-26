Rails.application.routes.draw do

  resources :howmanies
  resources :whattimes
  resources :posts do
    resources :likes, only:[:create, :destroy]
    resources :comments, only: [:create]
  end
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

# ログイン、アカウント編集後、任意のページに推移させるための記述
devise_for :users, controllers: {
        registrations: 'users/registrations'
}
resources :users, only: [:show]
resources :relationships
resources :users do
  member do
    get :following
    get :followers
  end
end
end
