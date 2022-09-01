Rails.application.routes.draw do
  resources :contact_informations
  resources :emergency_contacts
  resources :dependents
  resources :educations 
  devise_for :users, controllers: {
    sessions: 'users/sessions',
    registrations: 'users/registrations',
    passwords:    'users/passwords'
  }
  

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
    
  
 root 'utility_bills#index'
 get "filter_institute",to:"educations#filter_institute"
 get '/pay', to: 'bills#pay'
 get "/filter_billing_month", to:"bills#filter_billing_month"
  get "/date_range", to:"bills#date_range"
 get"/search_bar_field", to:"bills#search_bar_field"
 get"/search", to: "utility_bills#search"
 get"/get_companies", to: "utility_bills#get_companies"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
