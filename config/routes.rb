Rails.application.routes.draw do

  # resources :users
  resources :sessions, only: [:new, :create, :destroy]
  get 'login', to: 'sessions#new', as: 'login'
  get 'logout', to: 'sessions#destroy', as: 'logout'
  resources :contacts, only: [:index]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root 'pages#about', as: 'home'
  get '/resume' => 'resumes#resume', as: 'resume'
  get '/project' => 'projects#project', as: 'project'
  resources :posts, only: [:destroy, :update, :create, :show, :new, :edit, :index]
  resources :contacts, only: [:index]
  

end
