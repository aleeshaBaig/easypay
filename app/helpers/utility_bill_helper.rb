module UtilityBillHelper
  def getCompanies ubc_id
    Company.where("utility_bill_category_id = ?", ubc_id)
  end
end
