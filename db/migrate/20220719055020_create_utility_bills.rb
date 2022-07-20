class CreateUtilityBills < ActiveRecord::Migration[7.0]
  def change
    create_table :utility_bills do |t|
      t.integer :consumer_id
      t.integer :expected_reading_day
      t.integer :expected_issuance_day
      t.integer :expected_due_day
      t.references :user, null: false, foreign_key: true
      t.references :utility_bill_category, null: false, foreign_key: true
      t.references :company, null: false, foreign_key: true

      t.timestamps
    end
  end
end
