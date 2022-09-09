class UtilityBill < ApplicationRecord
  validates :consumer_id, presence: true
  validates :customer_id, presence: true
  validates :customer_name, presence: true
  validates :utility_bill_category_id, presence: true
  validates :company_id, presence: true
  validates :expected_due_day, presence: true
  validates :expected_issuance_day, presence: true
  validates :expected_reading_day, presence: true
  validates :focal_person, presence: true
  validates :nickname, presence: true
  has_many :bills
  belongs_to :user
  belongs_to :utility_bill_category
  belongs_to :company

  def self.to_csv
    attribute = %w{ id consumer_id customer_id customer_name focal_person utility_bill_category.name company_id nickname expected_reading_day expected_issuance_day expected_due_day}
    CSV.generate(headers: true) do |csv|
      csv << attribute
      all.each do |utility_bill|
        csv << attribute.map{ |attr| utility_bill.send(attr)}
      end

    end
  end

   
end

 