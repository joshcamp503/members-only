Rails.application.routes.draw do
  get 'password_resets/new'
  get 'password_resets/edit'

  get 'users/new'

  get   'posts/new',          to: 'posts#new'
  post  'posts/new',          to: 'posts#create'

  root 'static_pages#home'
  get  'home',               to: 'static_pages#home'
  get  'about',              to: 'static_pages#about'
  get  'contact',            to: 'static_pages#contact'

  get  'signup',             to: 'users#new'

  get    'login',   to: 'sessions#new'
  post   'login',   to: 'sessions#create'
  delete 'logout',  to: 'sessions#destroy'

  resources :users 
  resources :posts, only: [:show, :new, :create, :index]
  resources :account_activations, only: [:edit]
  resources :password_resets, only: [:new, :create, :edit, :update]
end
