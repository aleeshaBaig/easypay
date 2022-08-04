class CreateEducations < ActiveRecord::Migration[7.0]
  def change
    create_table :educations do |t|
      t.string :title
      t.string :major
      t.string :institute
      t.string :date
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
