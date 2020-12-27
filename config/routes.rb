Rails.application.routes.draw do
  resources :seeds
  root to: 'seeds#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
