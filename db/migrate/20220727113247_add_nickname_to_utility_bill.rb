class AddNicknameToUtilityBill < ActiveRecord::Migration[7.0]
  def change
    add_column :utility_bills, :nickname, :string
  end
end
