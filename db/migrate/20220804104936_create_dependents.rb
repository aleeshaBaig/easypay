class CreateDependents < ActiveRecord::Migration[7.0]
  def change
    create_table :dependents do |t|
      t.string :name
      t.string :relation
      t.string :phone
      t.string :mobile
      t.string :date_of_birth
      t.string :contact_number
      t.string :address
      t.string :cnic
      t.string :nationality
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
