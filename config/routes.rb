Rails.application.routes.draw do
  root 'homes#index'
  get 'users/index1'
  
  get 'homes/index', to: 'homes#index'
  get 'sign_up', to: 'homes#sign_up' 
  get 'show' , to: 'homes#show'
  post 'show' , to: 'homes#show'
  get 'login' , to: 'homes#login'
  get 'contact',to: 'homes#contact'
  get 'about_us',to: 'homes#about_us'
  get 'users/index1',to: 'users#index1'
  post 'users/index1',to: 'users#index1'
  get 'users/log_out', to: 'users#log_out'
  
  

resources :homes
resources :users
     
     
  


  
   
end