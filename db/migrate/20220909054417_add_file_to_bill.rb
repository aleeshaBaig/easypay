class AddFileToBill < ActiveRecord::Migration[7.0]
  def change
    add_column :bills, :file, :string
  end
end
