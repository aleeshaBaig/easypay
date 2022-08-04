class AddDateOfBirthToPersonalInformation < ActiveRecord::Migration[7.0]
  def change
    add_column :personal_informations, :date_of_birth, :string
  end
end
