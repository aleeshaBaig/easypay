class AddColumnEmployeeCodeToPersonalInformation < ActiveRecord::Migration[7.0]
  def change
    add_column :personal_informations, :employee_code, :string
  end
end
