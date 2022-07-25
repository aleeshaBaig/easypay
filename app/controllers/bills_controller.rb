class BillsController < ApplicationController
before_action :authenticate_user!
before_action :get_bill, only: [:show, :pay]
add_flash_types :info, :error, :success
  def index
    @bills = current_user.bills
  end
  def show
  end
  def pay
    if @bill.status == "unpaid"
      respond_to do |format|
        if @bill.update(status: "paid") 
         #format.turbo_stream { render turbo_stream: ..., layout: ... }
        end
      end
      
    end
  end
  def get_bill
    @bill = Bill.find(params[:id])
  end
end
