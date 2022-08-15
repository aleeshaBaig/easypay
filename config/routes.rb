Rails.application.routes.draw do
  resources :contact_informations
  resources :emergency_contacts
  resources :dependents
  resources :educations
  devise_for :users
  resources :personal_informations
  resources :utility_bills do
      collection do
        get 'companies_details'
        get'search'
        
      end
    end
  resources :bills do
    collection do
      post "pay"
    end
   end
  
 root 'home#index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
