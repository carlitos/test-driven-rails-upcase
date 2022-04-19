Rails.application.routes.draw do
  root 'todos#index'
  resources :todos, only: [:new, :create, :index] do
    resources :completion, only: [:create]
  end
  resources :sessions, only: [:new, :create]
end
