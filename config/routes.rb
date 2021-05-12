Rails.application.routes.draw do
  devise_for :users
  get 'customers/new'
  
  get'/signup', to: 'customers#new'

  get '/login', to: 'users#login'


  get 'static_pages/home'

  get '/about', to: 'static_pages#about'
  
  get '/contact', to: 'static_pages#contact'
  
  root 'static_pages#home'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  
  
  resources:customers
end
