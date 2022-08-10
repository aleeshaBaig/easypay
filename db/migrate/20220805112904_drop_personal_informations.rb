class DropPersonalInformations < ActiveRecord::Migration[7.0]
  def change
    drop_table :personal_informations,  force: :cascade

  end
end
 
