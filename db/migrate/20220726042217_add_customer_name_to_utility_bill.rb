class AddCustomerNameToUtilityBill < ActiveRecord::Migration[7.0]
  def change
    add_column :utility_bills, :customer_name, :string
  end
end
