class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
      t.decimal :amount
      t.decimal :late_fee
      t.date :reading_date
      t.date :issuance_date
      t.date :due_date
      t.integer :status
      t.references :user, null: false, foreign_key: true
      t.references :utility_bill, null: false, foreign_key: true

      t.timestamps
    end
  end
end
