class HomeController < ApplicationController
before_action :authenticate_user!
   def index
     @utility_bills = current_user.utility_bill
     @bills = current_user.bills.where(["billing_month LIKE ?","%#{params[:search]}%"])
    
    end
    def show
      @bills = Bill.find(params[:id])
    end
    def list
      @utility_bills = UtilityBill.includes(:customer_name)
      @utility_bills = UtilityBill.where('utility_bill_category_name like ?',"%#{params[:utility_bill_category_name]}%") if params[:utility_bill_category_name].present?
      @utility_bills = UtilityBill.order("#{params[:column]} #{params[:direction]}")
      render(partial: '@utility_bills', locals: {utility_bills: utility_bills})
      
    
      end
end
