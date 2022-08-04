class AddColumnDesignationToPersonalInformation < ActiveRecord::Migration[7.0]
  def change
    add_column :personal_informations, :designation, :string
  end
end
