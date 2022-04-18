Rails.application.routes.draw do
  root 'todos#index'
  resources :todos, only: [:new, :create, :index]
end
