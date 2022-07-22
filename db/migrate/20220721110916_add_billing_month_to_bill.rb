class AddBillingMonthToBill < ActiveRecord::Migration[7.0]
  def change
    add_column :bills, :billing_month, :string
  end
end
