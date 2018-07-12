Rails.application.routes.draw do
  
  root 'login#index'
  resources :users
  
  post '/login', to: 'login#check_login'
  get 'create_json/:id', to: 'users#create_json'
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
