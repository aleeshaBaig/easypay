class AddDepartmentToPersonalInformation < ActiveRecord::Migration[7.0]
  def change
    add_column :personal_informations, :department, :string
  end
end
