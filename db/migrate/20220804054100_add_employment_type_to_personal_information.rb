class AddEmploymentTypeToPersonalInformation < ActiveRecord::Migration[7.0]
  def change
    add_column :personal_informations, :employment_type, :string
  end
end
