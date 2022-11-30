Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  resources :commandes
  resources :partners
  resources :articles
  resources :categories
  resources :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "admin/articles#index"
  post 'auth/login', to: 'authentication#login'
  get 'my_products', to: 'articles#articles_by_partner'
end
