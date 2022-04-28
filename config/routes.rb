Rails.application.routes.draw do
  get 'sessions/new'
  root to: 'static#index'

  get    '/login',   to: 'sessions#new'
  post   '/login',   to: 'sessions#create'
  get    '/logout',  to: 'sessions#destroy'

  resources :roles
  resources :repair_offers
  resources :comments
  resources :forum_posts
  resources :users

end
