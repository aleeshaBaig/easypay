class Category < ActiveRecord::Migration[7.0]
  def change
     add_column :utility_bills, :category, :integer
  end
end
