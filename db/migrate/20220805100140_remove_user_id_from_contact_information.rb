class RemoveUserIdFromContactInformation < ActiveRecord::Migration[7.0]
  def change
    remove_column :contact_informations, :user_id, :integer
  end
end
