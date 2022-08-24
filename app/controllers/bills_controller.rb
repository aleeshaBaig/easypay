class BillsController < ApplicationController
before_action :authenticate_user!
before_action :get_bill, only: [:show, :pay]

    def index
    # @search = BillSearch.new(params[:search])
    # @bills = @search.scope
    date_from = params[:date_from]
    date_to = params[:date_to]
    if date_from.present? and date_to.present?
      @bills = current_user.bills.where("due_date >= ? and due_date <= ?", date_from, date_to)
    else
      @bills = current_user.bills
    end
  end
 
    def show
     @bill = Bill.find(params[:id])
    end
  def pay
    if (@bill.status == "Unpaid") || (@bill.status == "Pending")
      respond_to do |format|
        if @bill.update(status: "Paid") 
         #format.turbo_stream { render turbo_stream: ..., layout: ... }
        end
      end
      
    end
  end
  def get_bill
    @bill = Bill.find(params[:id])
  end
  def new
    @bill= Bill.new
  end
  def create
    @bill= Bill.new(bill_params)
    respond_to do |format|
      if @bill.save
       format.html { redirect_to root_path(@bill), notice: "Bill Added"}
       format.json { render :show, status: :created, location: @bill}
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @bill.errors, status: :unprocessable_entity }
      end
  end
  end
  def edit
    @bill= Bill.find(params[:id])
  end
  def update
    @bill= Bill.find(params[:id])
    if @bill.update(bill_params)
      redirect_to root_path
    else
      render :edit, status: :unprocessable_entity
    end
  end
  def destroy
    @bill= Bill.find(params[:id])
    @bill.destroy
    redirect_to root_path, status: :see_other
  end
  private
    def bill_params
      params.require(:bill).permit(:amount,:late_fee,:billing_month,:reading_date,:issuance_date,:due_date,:user_id,:status,:utility_bill_id)
    end
end
