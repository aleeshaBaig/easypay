require 'csv'
class UtilityBill < ApplicationRecord
  def self.to_csv
    attribute = %w{consumer_id customer_name category}
    CSV.generate(header: true) do |csv|
      csv << attribute
      all.each do |utility_bill|
        csv << attribute.map{|attr| utility_bill.send(attr)}
      end

    end

  end
  has_many :bills
  belongs_to :user
  belongs_to :utility_bill_category
  belongs_to :company
end
