class AddReligionToPersonalInformation < ActiveRecord::Migration[7.0]
  def change
    add_column :personal_informations, :religion, :string
  end
end
