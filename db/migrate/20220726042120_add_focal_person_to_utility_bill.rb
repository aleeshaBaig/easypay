class AddFocalPersonToUtilityBill < ActiveRecord::Migration[7.0]
  def change
    add_column :utility_bills, :focal_person, :string
  end
end
