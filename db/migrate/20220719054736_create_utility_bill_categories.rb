class CreateUtilityBillCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :utility_bill_categories do |t|
      t.string :name
      t.text :description

      t.timestamps
    end
  end
end
