class CreatePersonalInformations < ActiveRecord::Migration[7.0]
  def change
    create_table :personal_informations do |t|
      t.text :first_name

      t.timestamps
    end
  end
end
