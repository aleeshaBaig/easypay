class ChangeColumnTypeInEducation < ActiveRecord::Migration[7.0]
  def change
    change_column :educations, :date, :date

  end
end
