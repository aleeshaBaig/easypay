class ChangeConsumerIdToBeStringInUtilityBill < ActiveRecord::Migration[7.0]
  def up
    change_table :utility_bills do |t|
      t.change :consumer_id, :string

    end
  end

  def down
    change_table  :utility_bills do |t|
      t.change :consumer_id, :integer
    end
  end
end
