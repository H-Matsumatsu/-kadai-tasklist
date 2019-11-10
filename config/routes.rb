Rails.application.routes.draw do
  get 'users/index'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  get 'users/edit'
  get 'users/update'
  get 'users/destroy'
  root to: 'tasks#index'
  
  get 'signup', to: 'users#new'  
  resources :users, only: [:index, :show, :new, :create, :edit, :update, :destroy]
end
