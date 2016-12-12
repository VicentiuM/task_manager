Rails.application.routes.draw do
  devise_for :users

  match 'users/:id' => 'users#show', via: :get
  match 'users' => 'users#index', via: :get

  
  resources :projects do
  	resources :tasks
  end
  
  get 'welcome/index'
 
  root 'projects#index'
end