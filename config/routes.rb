Rails.application.routes.draw do
  resources :todo_tasks
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "landing_page#index"
  get 'home', to: 'landing_page#index'
  get 'sign_up', to: 'registration#new'
  post 'sign_up', to: 'registration#create'
  get 'sign_in', to: 'session#new'
  post 'sign_in', to: 'session#create', as: 'log_in'
  delete 'logout', to: 'session#destroy'
  get 'password', to: 'password#edit', as: 'edit_password'
  patch 'password', to: 'password#update'
  get 'password/reset', to: 'password_reset#new'
  post 'password/reset', to: 'password_reset#create'
  get 'password/reset/edit', to: 'password_reset#edit'
  patch 'password/reset/edit', to: 'password_reset#update'
end
