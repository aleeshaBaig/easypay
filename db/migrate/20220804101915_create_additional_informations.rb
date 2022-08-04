class CreateAdditionalInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :additional_informations do |t|
      t.string :place_of_birth
      t.string :domicile
      t.string :nationality
      t.string :passport_number
      t.string :blood_group
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
