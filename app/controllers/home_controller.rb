class HomeController < ApplicationController
before_action :authenticate_user!
   def index
     @utility_bills = current_user.utility_bill
     @bills = current_user.bills.where(["billing_month LIKE ?","%#{params[:search]}%"])
    
    end
    def show
      @bills = Bill.find(params[:id])
    end
end
