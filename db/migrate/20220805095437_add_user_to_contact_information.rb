class AddUserToContactInformation < ActiveRecord::Migration[7.0]
  def change
    add_reference :contact_informations, :user, null: false, foreign_key: true
  end
end
