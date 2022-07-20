class CreateCompanies < ActiveRecord::Migration[7.0]
  def change
    create_table :companies do |t|
      t.string :name
      t.references :utility_bill_category, null: false, foreign_key: true

      t.timestamps
    end
  end
end
