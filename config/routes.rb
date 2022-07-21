Rails.application.routes.draw do
  devise_for :users
   root'bill#index'
   get'addbill', to:'utility_bill#new'
   resources :utility_bill
   resources :bill
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
