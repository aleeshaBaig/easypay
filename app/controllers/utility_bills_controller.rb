class UtilityBillsController < ApplicationController
before_action :authenticate_user!

   def index
    @utility_bills = current_user.utility_bill
  end

  def show
    @utility_bill = UtilityBill.find(params[:id])
  end

  def new

    @utility_bill = UtilityBill.new

  end

  def create
    @utility_bill = UtilityBill.new(utility_bill_params)
     

    if @utility_bill.save
      redirect_to utility_bills_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  

  private
    def utility_bill_params
      params.require(:utility_bill).permit(:consumer_id,:utility_bill_category_id, :company_id, :expected_reading_day, :expected_issuance_day, :expected_due_day, :user_id)
    end
end