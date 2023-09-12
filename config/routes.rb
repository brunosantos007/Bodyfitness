Rails.application.routes.draw do
  devise_for :users
  resources :biotipos
  resources :planos
  resources :usuarios
  resources :logado

  get 'welcome/index'
  get 'login/index'

  root to: 'welcome#index'

  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  
  # Defines the root path route ("/")
  # root "articles#index"
end
