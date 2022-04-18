Rails.application.routes.draw do
  root 'todos#index'
  resources :todos, only: [:new, :create, :index]
  resources :sessions, only: [:new, :create]
end
