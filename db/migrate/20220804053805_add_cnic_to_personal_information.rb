class AddCnicToPersonalInformation < ActiveRecord::Migration[7.0]
  def change
    add_column :personal_informations, :cnic, :string
  end
end
