class HomeController < ApplicationController
before_action :authenticate_user!
   def index
     @utility_bills = current_user.utility_bill
        
    end
    def show
     end
   
end
