Rails.application.routes.draw do
  devise_for :users, path_names: { sign_in: 'login', sign_out: 'logout', password: 'secret', sign_up: 'registration' }

  devise_scope :user do
    get 'users/logout' => "devise/sessions#destroy"
  end

  resources :seeds
  root to: 'seeds#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
