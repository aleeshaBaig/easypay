class AddUserToPersonalInformation < ActiveRecord::Migration[7.0]
  def change
    add_reference :personal_informations, :user, null: false, foreign_key: true
  end
end
