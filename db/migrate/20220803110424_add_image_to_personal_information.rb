class AddImageToPersonalInformation < ActiveRecord::Migration[7.0]
  def change
    add_column :personal_informations, :image, :string
  end
end
