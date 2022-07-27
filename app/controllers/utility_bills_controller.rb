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
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
  def edit
    @utility_bill = UtilityBill.find(params[:id])
  end
  def update
    @utility_bill = UtilityBill.find(params[:id])

    if @utility_bill.update(utility_bill_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end
 
  def destroy
    @utility_bill = UtilityBill.find(params[:id])
    @utility_bill.destroy

    redirect_to root_path, status: :see_other
  end
  

  private
    def utility_bill_params
      params.require(:utility_bill).permit(:consumer_id,:utility_bill_category_id, :company_id, :expected_reading_day, :expected_issuance_day, :expected_due_day, :user_id, :customer_name,:customer_id, :focal_person)
    end
end