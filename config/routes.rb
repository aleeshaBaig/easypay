Rails.application.routes.draw do
  devise_for :users
   root 'home#index'
   resources :utility_bills
   resources :bills do
    collection do
      post "pay" 
    end
   end
 
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
