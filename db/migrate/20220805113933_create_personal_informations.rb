class CreatePersonalInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :personal_informations do |t|
      t.string :image
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.integer :marital_status
      t.integer :religion
      t.string :cnic
      t.string :project
      t.string :department
      t.integer :employment_type
      t.integer :employee_code
      t.string :designation
      t.date :date_of_joining
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
