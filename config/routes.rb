Rails.application.routes.draw do
  get 'about/payment', to: 'about#payment'
  get 'about', to: 'about#index'
  # devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', sign_up: 'registration' }

  devise_scope :user do
    get 'users/logout' => "devise/sessions#destroy"
  end
  
  post 'cart' => "cart#index"

  get 'seeds', to: 'seeds#index'
  get 'seeds/:id', to: 'seeds#show', as: 'seed', constraints: { id: /\d+/ }
  get 'seeds/:topic', to: 'seeds#topic'
  
  get 'orders/:id', to: 'orders#show', constraints: { id: /\d+/ }
  get 'orders/finished', to: 'orders#finished'
  
  resources :orders

  root to: 'seeds#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
