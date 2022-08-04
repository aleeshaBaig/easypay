class AddColumnProjectToPersonalInformation < ActiveRecord::Migration[7.0]
  def change
    add_column :personal_informations, :project, :string
  end
end
