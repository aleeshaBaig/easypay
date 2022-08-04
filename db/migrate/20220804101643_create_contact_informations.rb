class CreateContactInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :contact_informations do |t|
      t.string :mobile
      t.string :residence_phone
      t.string :coordinator
      t.string :office_phone_string
      t.string :personal_email
      t.string :email_offical

      t.timestamps
    end
  end
end
