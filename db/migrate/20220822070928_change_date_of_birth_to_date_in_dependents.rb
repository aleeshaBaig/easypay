class ChangeDateOfBirthToDateInDependents < ActiveRecord::Migration[7.0]
  def change
    change_column :dependents, :date_of_birth, :date

  end
end
