class AddDateOfJoiningToPersonalInformation < ActiveRecord::Migration[7.0]
  def change
    add_column :personal_informations, :date_of_joining, :string
  end
end
