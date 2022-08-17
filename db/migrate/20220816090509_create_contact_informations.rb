class CreateContactInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_informations do |t|
      t.integer :mobile
      t.integer :residence_phone
      t.string :coordinator
      t.string :personal_email
      t.string :email_offical
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
