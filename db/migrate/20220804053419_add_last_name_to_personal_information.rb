class AddLastNameToPersonalInformation < ActiveRecord::Migration[7.0]
  def change
    add_column :personal_informations, :last_name, :string
  end
end
