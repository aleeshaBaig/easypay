module UtilityBillHelper
  def getCompanies ubc_id
    Company.where("utility_bill_category_id = ?", ubc_id)
  end

  def companies_collection
    Company.where(utility_bill_category_id: params[:utility_bill_category_id])
  end
end
