class AddCompanyToUtilityBill < ActiveRecord::Migration[7.0]
  def change
    add_column :utility_bills, :company, :string
  end
end
