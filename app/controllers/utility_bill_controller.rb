class UtilityBillController < ApplicationController
   def index
    @utility_bills = UtilityBill.all
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
      redirect_to @utility_bill
    else
      render :new, status: :unprocessable_entity
    end
end
  

  private
    def utility_bill_params
      params.require(:utility_bill).permit(:consumer_id,:category, :company, :expected_reading_day, :expected_issuance_day, :expected_due_day)
    end
end