class Company < ApplicationRecord
  has_many :utility_bills, dependent: :destroy
  belongs_to :utility_bill_category
end
