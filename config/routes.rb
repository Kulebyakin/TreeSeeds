Rails.application.routes.draw do
  # devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', sign_up: 'registration' }

  devise_scope :user do
    get 'users/logout' => "devise/sessions#destroy"
  end
  
  post 'cart' => "cart#index"

  resources :seeds
  resources :orders
  root to: 'seeds#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
