Rails.application.routes.draw do
  
  root 'pages#home'
  get 'pages/about', to: 'pages#about'
  
  resources :articles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  get 'signup', to: 'users#new'
  post 'users', to: 'users#create'
end
