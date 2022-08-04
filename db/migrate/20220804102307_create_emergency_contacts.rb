class CreateEmergencyContacts < ActiveRecord::Migration[7.0]
  def change
    create_table :emergency_contacts do |t|
      t.string :emergency_contact_name
      t.string :emergency_contact_relation
      t.string :emergency_contact_mobile
      t.string :residence_address
      t.string :permanent_address
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
