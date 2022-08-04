class AddMaritalStatusToPersonalInformation < ActiveRecord::Migration[7.0]
  def change
    add_column :personal_informations, :marital_status, :integer
  end
end
