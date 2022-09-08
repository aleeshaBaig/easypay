class UtilityBillsController < ApplicationController
	before_action :authenticate_user!

	def companies_details
		utility_bill_category_id = params[:utility_bill_category_id]
		if utility_bill_category_id.present?
			companies = Company.select("id, name").where(utility_bill_category_id: utility_bill_category_id)
						render json: {status: true, data: companies.as_json}, status: 200
		else
			render json: {status: false, data: []}, status: 400
		end
	end


	def get_companies
				utility_bill_category_id = params[:utility_bill_category_id]

		if utility_bill_category_id.present?
			companies = Company.select("id, name").where(utility_bill_category_id: params[:utility_bill_category_id])
			@bills= Bill.where(Comapany: companies)
			render json: {status: true, data: companies.as_json}, status: 200
		else
			render json: {status: false, data: []}, status: 400

		end

	end


  def search 
    
   

  end
  

 def index
  utility_bill_category_id = params[:utility_bill_category_id]
  company_id = params[:company_id]
  customer_name = params[:search_text_field]
   

  if utility_bill_category_id.present? && company_id.present? && customer_name.present?
    @utility_bills = UtilityBill.where("utility_bill_category_id = ? and company_id= ?  and customer_name LIKE ?",utility_bill_category_id, company_id, "%#{customer_name}%").where(user_id: current_user.id)
  elsif utility_bill_category_id.present? && company_id.present?
    @utility_bills = UtilityBill.where("utility_bill_category_id = ? and company_id = ?", utility_bill_category_id, company_id).where(user_id: current_user.id)
  elsif utility_bill_category_id.present? && customer_name.present?
    @utility_bills = UtilityBill.where("utility_bill_category_id = ? and customer_name = ?", utility_bill_category_id, customer_name).where(user_id: current_user.id)
  elsif utility_bill_category_id.present?
    @utility_bills = UtilityBill.where("utility_bill_category_id = ?", utility_bill_category_id).where(user_id: current_user.id)
  elsif company_id.present?
    @utility_bills = UtilityBill.where("company_id = ?", company_id).where(user_id: current_user.id)
  elsif customer_name.present?
    @utility_bills = UtilityBill.where("customer_name LIKE ?", "%#{customer_name}%").where(user_id: current_user.id)
  else
    @utility_bills = current_user.utility_bill
  end
        respond_to do |format|
    format.html
    format.csv { send_data @utility_bills.to_csv }
	    end
 end
 

	def show
		@utility_bill = UtilityBill.find(params[:id])
	end

	def new

		@utility_bill = UtilityBill.new

	end

	def create
		@utility_bill = UtilityBill.new(utility_bill_params)
		respond_to do |format|
			if @utility_bill.save
				format.html { redirect_to root_path(@utility_bill, notice: "Utility Added")}
				format.json { render :show, status: :created, location: @utility_bill}
			else
				format.html {render :new, status: :unprocessable_entity }
				format.json { render json: @utility_bill.errors, status: :unprocessable_entity}
			end
		end
	end
	def edit
		@utility_bill = UtilityBill.find(params[:id])
	end
		def update
		@utility_bill = UtilityBill.find(params[:id])     
		respond_to do |format|

			if @utility_bill.update(utility_bill_params)
				format.html { redirect_to root_path(@utility_bill), notice: "Utility Bill is Updated"}
				format.json {render :show, status: :ok, location: @utility_bill}
			else
				format.html { render :edit, status: :unprocessable_entity}
				format.json { render json: @utility_bill.errors, status: :unprocessable_entity}
			end
		end
	end
		def destroy
		@utility_bill = UtilityBill.find(params[:id])
		@utility_bill.destroy
		respond_to do |format|
			format.html { redirect_to root_path, notice: "Deleted"  }
			format.json { head :no_content}
		end
	end
	private
	def utility_bill_params
		params.require(:utility_bill).permit(:consumer_id, :utility_bill_category_id, :company_id, :expected_reading_day, :expected_issuance_day, :expected_due_day, :user_id, :customer_name,:customer_id, :focal_person, :nickname)
	end
end
